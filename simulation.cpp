#include <iostream>
#include <vector>
#include <cmath>

struct Bead {
    double x, y, vx, vy, fx, fy;
};

class TaylorLine {
public:
    std::vector<Bead> beads;
    double freq, phi;

    // PARTNER B: Compute internal wiggles and springs
    void computeInternalForces(double t) {
        // 1. Calculate Hooke's Law between neighbors
        // 2. Calculate Bending force based on sin(2*PI*freq*t + phi)
    }

    // PARTNER B: Move beads based on final forces
    void updatePhysics(double dt) {
        // Update velocity: v = v + (F/M)*dt
        // Update position: x = x + v*dt
    }
};

class Simulation {
public:
    std::vector<TaylorLine> swarm;
    double R; // Radius to be decreased

    // PARTNER A: Prevent swimmers from overlapping
    void applyStericForces() {
        // Use Lennard-Jones potential for beads from different swimmers
    }

    // PARTNER A: Keep everything inside the circular wall
    void handleCircularBoundary() {
        // For each bead, if sqrt(x*x + y*y) > R: Bounce it back!
    }

    void run() {
        double t = 0, dt = 0.001;
        while(t < 1000) {
            for(auto &tl : swarm) tl.computeInternalForces(t);
            applyStericForces();
            handleCircularBoundary();
            for(auto &tl : swarm) tl.updatePhysics(dt);
            t += dt;
        }
    }
};
