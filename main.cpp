#include <iostream>
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

    for (int i = 0; i < NUM_SWIMMERS; i++) {

        TaylorLineConfig config;
        config.nu = 0.005;
        config.phi = dis(gen) * 2 * PI;

        TaylorLine swimmer(config);
        swimmer.initialize();

        // random position
        double cx, cy, r_sq;
        do {
            cx = (dis(gen) * 2.0 - 1.0) * (RADIUS );
            cy = (dis(gen) * 2.0 - 1.0) * (RADIUS );
            r_sq = cx*cx + cy*cy;
        } while (r_sq > (RADIUS)*(RADIUS));

        for (auto& bead : swimmer.beads) {
            bead.x += cx;
            bead.y += cy;
        }

        sim.swarm.push_back(swimmer);
    }
    cout << "Initialization Complete." << endl;
}

void saveFrameForGnuplot(const Simulation& sim, int frameNum) {
    string filename = "file" + to_string(frameNum) + ".txt";
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

    //  force - velocity - position
    for (int step=0; step<=total_steps; step++) {
        double t = step*DT;
        for (auto& swimmer : sim.swarm) {
            swimmer.computeInternalForces(t);
        }
        sim.applyStericForces();
        sim.handleCircularBoundary();
        for (auto& swimmer : sim.swarm) {
            swimmer.updateVelocities(DT);
            swimmer.updatePositions(DT);
        }
        // save frame
        if (step % SAVE_EVERY_STEPS == 0) {
            saveFrameForGnuplot(sim, frame_count);

            // progress bar
            if (frame_count % 10 == 0) {
                cout << "\rFrame " << frame_count << " saved (t=" << t << ")" << flush;
            }
            frame_count++;
        }
    }

    cout << "\nDone. " << frame_count << " frames generated." << endl;
    return 0;
}
