#include <iostream>
#include <vector>
#include <cmath>

struct Bead
{
    double x, y, vx, vy, fx, fy;
};

class TaylorLine
{
public:
    std::vector<Bead> beads;

    // swimmer parameters
    double freq;  // beating frequency ν
    double phi;   // phase
    double b;     // wave amplitude
    double kappa; // bending rigidity
    double k_s;   // spring constant
    double l0;    // rest length
    double gamma; // drag coefficient

    // -------------------------------
    // PARTNER B: Internal forces
    // -------------------------------
    void computeInternalForces(double t)
    {
        int N = beads.size();

        // Reset forces
        for (auto &bead : beads)
        {
            bead.fx = 0.0;
            bead.fy = 0.0;
        }

        // 1. Hooke's law (springs)
        for (int i = 0; i < N - 1; i++)
        {
            double dx = beads[i + 1].x - beads[i].x;
            double dy = beads[i + 1].y - beads[i].y;
            double r = sqrt(dx * dx + dy * dy) + 1e-12;

            double F = k_s * (r - l0);

            double fx = F * dx / r;
            double fy = F * dy / r;

            // Newton's 3rd law
            beads[i].fx += fx;
            beads[i].fy += fy;
            beads[i + 1].fx -= fx;
            beads[i + 1].fy -= fy;
        }

        // 2. Active bending (Taylor wave – Eq. 1)
        for (int i = 1; i < N - 1; i++)
        {

            double c = b * sin(
                               2.0 * M_PI * (freq * t + 2.0 * i / N) + phi);

            // discrete curvature
            double cx = beads[i + 1].x - 2.0 * beads[i].x + beads[i - 1].x;
            double cy = beads[i + 1].y - 2.0 * beads[i].y + beads[i - 1].y;

            beads[i].fx += kappa * c * cx;
            beads[i].fy += kappa * c * cy;
        }
    }

    // -------------------------------
    // PARTNER B: Overdamped dynamics
    // -------------------------------
    void updatePhysics(double dt)
    {
        for (auto &bead : beads)
        {

            // pure overdamped motion (low Reynolds number)
            bead.vx = bead.fx / gamma;
            bead.vy = bead.fy / gamma;

            bead.x += bead.vx * dt;
            bead.y += bead.vy * dt;
        }
    }
};

class Simulation
{
public:
    std::vector<TaylorLine> swarm;
    double R; // Radius to be decreased

    // PARTNER A: Prevent swimmers from overlapping
    void applyStericForces()
    {
        // Truncated Lennard-Jones potential for every beads on different swimmers

        double r0 = 1.0;                    // r0=a0 as per reaserch paper
        double epsilon = 13.75;             // strenth of potential
        double cutoff = pow(2, 1 / 6) * r0; // potential applied only when r<cutoff
        double cutoff_sq = cutoff * cutoff; // we will measure r_sq < cutoff_sq

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

                            // decomposing forces
                            double fdx = f_mag * (dx / r);
                            double fdy = f_mag * (dy / r);

                            beadI.fx += fx;
                            beadI.fy += fy;
                            beadJ.fx -= fx;
                            beadJ.fy -= fy;
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

    void run()
    {
        double t = 0, dt = 0.001;
        while (t < 1000)
        {
            for (auto &tl : swarm)
                tl.computeInternalForces(t);
            applyStericForces();
            handleCircularBoundary();
            for (auto &tl : swarm)
                tl.updatePhysics(dt);
            t += dt;
        }
    }
};
