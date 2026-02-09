#include <iostream>
#include <vector>
#include <cmath>
#include "TaylorLine.h"

class Simulation
{
public:
    std::vector<TaylorLine> swarm;
    double current_R; // Radius to be decreased

    // PARTNER A: Prevent swimmers from overlapping
    void applyStericForces()
    {
        // Truncated Lennard-Jones potential for every beads on different swimmers

        double r0 = 1.0;                        // r0=a0 as per reaserch paper
        double epsilon = 13.75;                 // strenth of potential
        double cutoff = pow(2, 1.0 / 6.0) * r0; // potential applied only when r<cutoff
        double cutoff_sq = cutoff * cutoff;     // we will measure r_sq < cutoff_sq

        for (int i = 0; i < swarm.size(); i++)
        {
            for (int j = i + 1; j < swarm.size(); j++)
            {

                for (auto &beadI : swarm[i].beads)
                {
                    for (auto &beadJ : swarm[j].beads)
                    {

                        double dx = beadI.x - beadJ.x;
                        double dy = beadI.y - beadJ.y;
                        double r_sq = dx * dx + dy * dy;
                        double r = sqrt(r_sq);

                        if (r_sq < cutoff_sq)
                        {

                            // we need to change the force value on every bead
                            // we know F = -grad.V

                            double e_r = 13.75 / r;
                            double r0_r6 = 1 / pow(r_sq, 3); // r0 is taken 1
                            double r0_r12 = r0_r6 * r0_r6;
                            double f_mag = (48 * e_r) * (r0_r12 - 0.5 * r0_r6);

                            // // Clamp huge forces to prevent numerical explosion
                            // const double MAX_FORCE = 1000.0;
                            // if (f_mag > MAX_FORCE) f_mag = MAX_FORCE;
                            // else if (f_mag < -MAX_FORCE) f_mag = -MAX_FORCE;

                            // decomposing forces
                            double fdx = f_mag * (dx / r);
                            double fdy = f_mag * (dy / r);

                            beadI.fx += fdx;
                            beadI.fy += fdy;
                            beadJ.fx -= fdx;
                            beadJ.fy -= fdy;
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
};
