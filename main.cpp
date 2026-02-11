#include <iostream>
#include <cstdlib>
#include <fstream>
#include <vector>
#include <cmath>
#include <string>
#include <random>
#include <iomanip>
#include "TaylorLine.h"
#include "simulation.cpp"

using namespace std;

const int NUM_SWIMMERS = 100;
const double RADIUS = 100.0;
const double TOTAL_TIME = 100.0;
const double DT = 0.001;
const int SAVE_EVERY_STEPS = 500;

// random generator
std::random_device rd;
std::mt19937 gen(rd());

void initializeSwarm(Simulation& sim) {
    sim.swarm.clear();
    sim.current_R = RADIUS;

    cout << "Initializing " << NUM_SWIMMERS << " swimmers , with random initial positions and same frequency" << endl;

    std::uniform_real_distribution<> dis(0.0, 1.0);

    int attempts = 0;
    int accepted = 0;
    while (accepted < NUM_SWIMMERS && attempts < 100000) {  // Safety break
        attempts++;

        TaylorLineConfig config;
        config.nu = 0.005;
        config.phi = dis(gen) * 2 * PI;

        TaylorLine swimmer(config);
        swimmer.initialize();

        // Calculate half-length for centering
        double half_length = (swimmer.N - 1) * swimmer.l0 / 2.0;

        // random position
        double cx, cy, r_sq;
        double safe_radius = RADIUS - half_length - 2.0; // Ensure whole swimmer fits inside
        if (safe_radius < 0) safe_radius = 1.0; // Fallback just in case

        do {
            cx = (dis(gen) * 2.0 - 1.0) * (safe_radius);
            cy = (dis(gen) * 2.0 - 1.0) * (safe_radius);
            r_sq = cx*cx + cy*cy;
        } while (r_sq > safe_radius * safe_radius);

        // Shift beads (centering)
        for (auto& bead : swimmer.beads) {
            bead.x += cx - half_length; // Align center to cx (assuming horizontal init)
            bead.y += cy;
        }

        // --- OVERLAP CHECK ---
        bool overlaps = false;
        double min_dist_sq = 1.2 * 1.2; // slightly larger than cutoff (1.12) to be safe

        for (const auto& existing_swimmer : sim.swarm) {
            for (const auto& existing_bead : existing_swimmer.beads) {
                for (const auto& new_bead : swimmer.beads) {
                    double dx = existing_bead.x - new_bead.x;
                    double dy = existing_bead.y - new_bead.y;
                    if (dx*dx + dy*dy < min_dist_sq) {
                        overlaps = true;
                        break;
                    }
                }
                if (overlaps) break;
            }
            if (overlaps) break;
        }

        if (!overlaps) {
            sim.swarm.push_back(swimmer);
            accepted++;
            if (accepted % 10 == 0) cout << "." << flush;
        }
    }
    cout << endl;

    if (accepted < NUM_SWIMMERS) {
        cout << "WARNING: Could only place " << accepted << " swimmers without overlap." << endl;
    }
    cout << "Initialization Complete." << endl;
}

void saveFrameForGnuplot(const Simulation& sim, int frameNum) {
    string filename = "data/file" + to_string(frameNum) + ".txt";
    ofstream outfile(filename);

    if (!outfile.is_open()) return;

    for (const auto& swimmer : sim.swarm) {
        for (const auto& bead : swimmer.beads) {
            outfile << bead.x << " " << bead.y << "\n";
        }
        outfile << "\n\n"; // Double newline for Gnuplot
    }
    outfile.close();
}

int main() {
    Simulation sim;
    initializeSwarm(sim);

    int total_steps = (int)(TOTAL_TIME / DT);
    int frame_count = 0;

    cout << "Starting Simulation..." << endl;
    system("mkdir -p data");

    //  force - velocity - position
    // --- VELOCITY VERLET INITIALIZATION ---
    // Compute forces at t=0 before the loop
    double t = 0.0;
    for (auto& swimmer : sim.swarm) {
        swimmer.computeInternalForces(t);
    }
    sim.applyStericForces();
    sim.handleCircularBoundary(); // Note: This might reflect v(0) if initially overlapping (unlikely)

    //  force - velocity - position
    for (int step=0; step<=total_steps; step++) {
        
        // 1. First Half-Kick: v(t + dt/2) = v(t) + 0.5 * a(t) * dt
        // We do NOT add swimming velocity here (it's added at the end or distributed)
        // To strictly follow "add V0 every step", we add it once per full step.
        // We'll add it in the second half.
        for (auto& swimmer : sim.swarm) {
            swimmer.updateVelocities(0.5 * DT, false);
        }

        // 2. Drift: r(t + dt) = r(t) + v(t + dt/2) * dt
        for (auto& swimmer : sim.swarm) {
            swimmer.updatePositions(DT);
        }
        
        // 3. Compute Forces at new position: a(t + dt)
        double t_next = (step + 1) * DT;
        for (auto& swimmer : sim.swarm) {
            swimmer.computeInternalForces(t_next);
        }
        sim.applyStericForces();
        sim.handleCircularBoundary(); // Reflects v(t + dt/2) if collision occurs

        // 4. Second Half-Kick: v(t + dt) = v(t + dt/2) + 0.5 * a(t + dt) * dt
        // We Add Swimming Velocity HERE (once per step)
        for (auto& swimmer : sim.swarm) {
            swimmer.updateVelocities(0.5 * DT, true);
        }

        // save frame
        if (step % SAVE_EVERY_STEPS == 0) {
            saveFrameForGnuplot(sim, frame_count);

            // progress bar
            if (frame_count % 10 == 0) {
                cout << "\rFrame " << frame_count << " saved (t=" << t_next << ")" << flush;
            }
            frame_count++;
        }
    }

    cout << "\nDone. " << frame_count << " frames generated." << endl;
    return 0;
}
