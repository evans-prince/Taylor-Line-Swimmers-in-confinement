#include <iostream>
#include <vector>
#include <cmath>
#include <random>
#include "../headers/TaylorLine.h"

class Simulation
{
public:
    std::vector<TaylorLineConstantSpeed> swarm;
    double current_R; // Radius to be decreased

    struct BeadRef {
        Bead* b;
        int swimmer_id;
    };

    // PARTNER A: Prevent swimmers from overlapping (OPTIMIZED with Spatial Hashing)
    void applyStericForces()
    {
        double r0 = 1.0;                        // r0=a0 as per reaserch paper
        double epsilon = 13.75;                 // strenth of potential
        double cutoff = pow(2.0, 1.0 / 6.0) * r0; // roughly 1.12246...
        double cutoff_sq = cutoff * cutoff;     

        // Define Grid Size securely to encapsulate the entire dynamic R domain + padding
        // current_R is <= 200 theoretically, so bounds [-210, 210] are safe.
        double box_bound = 210.0;
        double d_cell = cutoff; 
        int grid_dim = ceil((2.0 * box_bound) / d_cell);
        
        std::vector<std::vector<BeadRef>> cells(grid_dim * grid_dim);

        // 1. Bin all beads into spatial grid boxes in O(N)
        for (int i = 0; i < swarm.size(); i++)
        {
            for (auto &bead : swarm[i].beads)
            {
                int cx = floor((bead.x + box_bound) / d_cell);
                int cy = floor((bead.y + box_bound) / d_cell);
                
                // Hard-clamp boundaries to prevent segmentation faults
                if (cx < 0) cx = 0;
                if (cx >= grid_dim) cx = grid_dim - 1;
                if (cy < 0) cy = 0;
                if (cy >= grid_dim) cy = grid_dim - 1;
                
                cells[cy * grid_dim + cx].push_back({&bead, i});
            }
        }

        // 2. Evaluate localized spatial neighbors using half-window offsets
        for (int cy = 0; cy < grid_dim; cy++)
        {
            for (int cx = 0; cx < grid_dim; cx++)
            {
                int cell_idx = cy * grid_dim + cx;
                auto &cell_beads = cells[cell_idx];
                
                if (cell_beads.empty()) continue;
                
                for (size_t i = 0; i < cell_beads.size(); i++)
                {
                    BeadRef ref1 = cell_beads[i];
                    
                    // A) Interact inside the same exact grid box (j > i avoids double force counting)
                    for (size_t j = i + 1; j < cell_beads.size(); j++)
                    {
                        BeadRef ref2 = cell_beads[j];
                        
                        // Enforce explicit rule: Avoid intermolecular forces (do not repel own beads)
                        if (ref1.swimmer_id == ref2.swimmer_id) continue;
                        
                        double dx = ref1.b->x - ref2.b->x;
                        double dy = ref1.b->y - ref2.b->y;
                        double r_sq = dx * dx + dy * dy;
                        
                        if (r_sq < cutoff_sq && r_sq > 1e-12)
                        {
                            double r = sqrt(r_sq);
                            double e_r = epsilon / r;
                            double r0_r6 = 1.0 / (r_sq * r_sq * r_sq);
                            double f_mag = (48.0 * e_r) * (r0_r6 * r0_r6 - 0.5 * r0_r6);
                            
                            double fdx = f_mag * (dx / r);
                            double fdy = f_mag * (dy / r);
                            
                            ref1.b->fx += fdx;
                            ref1.b->fy += fdy;
                            ref2.b->fx -= fdx;
                            ref2.b->fy -= fdy;
                        }
                    }
                    
                    // B) Offset check: only check 4 of 8 neighbors to map symmetrically (Newton's 3rd)
                    int dx_n[4] = {1, -1, 0, 1};
                    int dy_n[4] = {0, 1, 1, 1};
                    
                    for (int n = 0; n < 4; n++)
                    {
                        int nx = cx + dx_n[n];
                        int ny = cy + dy_n[n];
                        
                        if (nx < 0 || nx >= grid_dim || ny < 0 || ny >= grid_dim) continue;
                        
                        int n_cell_idx = ny * grid_dim + nx;
                        for (BeadRef ref2 : cells[n_cell_idx])
                        {
                            if (ref1.swimmer_id == ref2.swimmer_id) continue;
                            
                            double dx = ref1.b->x - ref2.b->x;
                            double dy = ref1.b->y - ref2.b->y;
                            double r_sq = dx * dx + dy * dy;
                            
                            if (r_sq < cutoff_sq && r_sq > 1e-12)
                            {
                                double r = sqrt(r_sq);
                                double e_r = epsilon / r;
                                double r0_r6 = 1.0 / (r_sq * r_sq * r_sq);
                                double f_mag = (48.0 * e_r) * (r0_r6 * r0_r6 - 0.5 * r0_r6);
                                
                                double fdx = f_mag * (dx / r);
                                double fdy = f_mag * (dy / r);
                                
                                ref1.b->fx += fdx;
                                ref1.b->fy += fdy;
                                ref2.b->fx -= fdx;
                                ref2.b->fy -= fdy;
                            }
                        }
                    }
                }
            }
        }
    }

    // PARTNER A: Keep everything inside the circular wall
    void handleCircularBoundary()
    {
        // for each bead , if r > R reflect it
        for (auto &tl : swarm)
        {
            for (auto &b : tl.beads)
            {
                double r = sqrt(b.x * b.x + b.y * b.y);

                if (r > current_R)
                {
                    //  unit normal vector (points outward)
                    double nx = b.x / r;
                    double ny = b.y / r;

                    // v dot n
                    double v_dot_n = b.vx * nx + b.vy * ny;

                    if (v_dot_n > 0)
                    {

                        b.vx -= 2.0 * v_dot_n * nx;
                        b.vy -= 2.0 * v_dot_n * ny;
                    }

                    // pushing the beads just inside the confinement
                    b.x = (current_R - 0.01) * nx;
                    b.y = (current_R - 0.01) * ny;
                }
            }
        }
    }

    // PARTNER A: Andersen Thermostat to regulate temperature
    void applyAndersenThermostat(double dt, double target_T, double nu_bath)
    {
        // Use a static random generator so we don't re-seed every time step
        static std::random_device rd;
        static std::mt19937 gen(rd());
        std::uniform_real_distribution<> uniform_dist(0.0, 1.0);

        for (auto &tl : swarm)
        {
            // Standard deviation of velocity for Maxwell-Boltzmann distribution: sqrt(k_B * T / mass)
            // Assuming k_B = 1.0 in reduced units
            double sigma = sqrt(target_T / tl.mass);
            std::normal_distribution<> normal_dist(0.0, sigma);

            for (auto &b : tl.beads)
            {
                // Each bead has a probability nu_bath * dt of colliding with the heat bath
                if (uniform_dist(gen) < nu_bath * dt)
                {
                    // Assign new velocities drawn from the target temperature distribution
                    b.vx = normal_dist(gen);
                    b.vy = normal_dist(gen);
                }
            }
        }
    }
};
