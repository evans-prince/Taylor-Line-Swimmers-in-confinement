#include <iostream>
#include <cstdlib>
#include <fstream>
#include <vector>
#include <cmath>
#include <string>
#include <random>
#include <iomanip>
#include <sstream>
#include <chrono>
#include <ctime>
#include "../headers/TaylorLine.h"
#include "simulation.cpp"

#ifdef _WIN32
#include <direct.h>
#define MKDIR(path) _mkdir(path.c_str())
#else
#include <sys/stat.h>
#define MKDIR(path) mkdir(path.c_str(), 0777)
#endif

using namespace std;

int NUM_SWIMMERS = 200;
string DATA_DIR = "data";
string COM_DIR = "COMdata";

const double RADIUS = 200.0;
const double TOTAL_TIME = 1000.0;
const double DT = 0.001;
const int SAVE_EVERY_STEPS = 500;

// random generator
std::random_device rd;
std::mt19937 gen(rd());

void initializeSwarm(Simulation &sim, double b_val, double nu_val, double v_val)
{
    sim.swarm.clear();
    sim.current_R = RADIUS;

    cout << "Initializing " << NUM_SWIMMERS << " swimmers , with random initial positions and same frequency" << endl;

    std::uniform_real_distribution<> dis(0.0, 1.0);

    int attempts = 0;
    int accepted = 0;
    while (accepted < NUM_SWIMMERS && attempts < 100000)
    { // Safety break
        attempts++;

        TaylorLineConfig config;
        config.b_amplitude = b_val;
        config.nu = nu_val;
        config.V0 = v_val;
        config.phi = dis(gen) * 2 * PI;

        TaylorLineConstantSpeed swimmer(config);
        swimmer.initialize();

        // Calculate half-length for centering
        double half_length = (swimmer.N - 1) * swimmer.l0 / 2.0;

        // random position
        double cx, cy, r_sq;
        double safe_radius = RADIUS - half_length - 2.0; // Ensure whole swimmer fits inside
        if (safe_radius < 0)
            safe_radius = 1.0; // Fallback just in case

        do
        {
            cx = (dis(gen) * 2.0 - 1.0) * (safe_radius);
            cy = (dis(gen) * 2.0 - 1.0) * (safe_radius);
            r_sq = cx * cx + cy * cy;
        } while (r_sq > safe_radius * safe_radius);

        // Shift beads (centering)
        for (auto &bead : swimmer.beads)
        {
            bead.x += cx - half_length; // Align center to cx (assuming horizontal init)
            bead.y += cy;
        }

        // --- OVERLAP CHECK ---
        bool overlaps = false;
        double min_dist_sq = 1.2 * 1.2; // slightly larger than cutoff (1.12) to be safe

        for (const auto &existing_swimmer : sim.swarm)
        {
            for (const auto &existing_bead : existing_swimmer.beads)
            {
                for (const auto &new_bead : swimmer.beads)
                {
                    double dx = existing_bead.x - new_bead.x;
                    double dy = existing_bead.y - new_bead.y;
                    if (dx * dx + dy * dy < min_dist_sq)
                    {
                        overlaps = true;
                        break;
                    }
                }
                if (overlaps)
                    break;
            }
            if (overlaps)
                break;
        }

        if (!overlaps)
        {
            sim.swarm.push_back(swimmer);
            accepted++;
            if (accepted % 10 == 0)
                cout << "." << flush;
        }
    }
    cout << endl;

    if (accepted < NUM_SWIMMERS)
    {
        cout << "WARNING: Could only place " << accepted << " swimmers without overlap." << endl;
    }
    cout << "Initialization Complete." << endl;
}

void saveCOMData(const Simulation &sim, int frameNum)
{
    string filename = COM_DIR + "/file" + to_string(frameNum) + ".txt";
    ofstream outfile(filename);

    if (!outfile.is_open())
        return;

    for (const auto &swimmer : sim.swarm)
    {
        double cx, cy, cvx, cvy, cfx, cfy;
        swimmer.getCenterOfMass(cx, cy);
        swimmer.getCenterOfMassVelocity(cvx, cvy);
        swimmer.getCenterOfMassForce(cfx, cfy);

        outfile << cx << " " << cy << " | " << cvx << " " << cvy << " | " << cfx << " " << cfy << "\n";
    }
    outfile.close();
}

bool resumeSwarm(Simulation &sim, int start_frame, double &restored_t, double b_val, double nu_val, double v_val)
{
    string filename = DATA_DIR + "/file" + to_string(start_frame) + ".txt";
    ifstream infile(filename);
    if (!infile.is_open())
    {
        cout << "WARNING: Could not open resume file: " << filename << endl;
        return false;
    }

    sim.swarm.clear();
    string line;
    TaylorLineConstantSpeed current_swimmer;
    bool building_swimmer = false;

    while (getline(infile, line))
    {
        if (line.empty())
        {
            if (building_swimmer && current_swimmer.beads.size() > 0)
            {
                sim.swarm.push_back(current_swimmer);
                building_swimmer = false;
                current_swimmer.beads.clear();
            }
            continue;
        }

        if (line.rfind("# R_val", 0) == 0)
        {
            stringstream ss(line);
            string dummy;
            ss >> dummy >> dummy >> sim.current_R;
        }
        else if (line.rfind("# t", 0) == 0)
        {
            stringstream ss(line);
            string dummy;
            ss >> dummy >> dummy >> restored_t;
        }
        else if (line.rfind("# phi", 0) == 0)
        {
            TaylorLineConfig config;
            config.b_amplitude = b_val;
            config.nu = nu_val;
            config.V0 = v_val;

            stringstream ss(line);
            string dummy;
            ss >> dummy >> dummy >> config.phi;

            current_swimmer = TaylorLineConstantSpeed(config);
            current_swimmer.beads.clear(); // Clear default beads
            building_swimmer = true;
        }
        else if (line[0] != '#' && building_swimmer)
        {
            Bead b;
            char sep;
            stringstream ss(line);
            ss >> b.x >> b.y >> sep >> b.vx >> b.vy >> sep >> b.fx >> b.fy;
            current_swimmer.beads.push_back(b);
        }
    }

    if (building_swimmer && current_swimmer.beads.size() > 0)
    {
        sim.swarm.push_back(current_swimmer);
    }

    infile.close();
    cout << "Resumed from frame " << start_frame << ": loaded " << sim.swarm.size() << " swimmers. (t=" << restored_t << ", R=" << sim.current_R << ")" << endl;
    return true;
}

void saveFrameForGnuplot(const Simulation &sim, int frameNum, double current_t)
{
    string filename = DATA_DIR + "/file" + to_string(frameNum) + ".txt";
    ofstream outfile(filename);

    if (!outfile.is_open())
        return;

    outfile << "# R_val " << sim.current_R << "\n";
    outfile << "# t " << current_t << "\n";

    for (const auto &swimmer : sim.swarm)
    {
        outfile << "# phi " << swimmer.phi << "\n";
        for (const auto &bead : swimmer.beads)
        {
            outfile << bead.x << " " << bead.y << " | " << bead.vx << " " << bead.vy << " | " << bead.fx << " " << bead.fy << "\n";
        }
        outfile << "\n\n"; // Double newline for Gnuplot
    }
    outfile.close();
}

int main(int argc, char *argv[])
{
    // Start Cross-Platform Native Chronometer
    auto system_start_time = std::chrono::system_clock::now();
    std::time_t start_time_t = std::chrono::system_clock::to_time_t(system_start_time);

    double b_val = 0.15;
    double nu_val = 0.001;
    double v_val = 0.0;
    double target_R = 75.0;
    double nu_bath = 1.0;
    int resume_frame = 0;

    if (argc >= 7)
    {
        b_val = atof(argv[1]);
        nu_val = atof(argv[2]);
        v_val = atof(argv[3]);
        target_R = atof(argv[4]);
        nu_bath = atof(argv[5]);
        resume_frame = atoi(argv[6]);
    }
    else if (argc >= 6)
    {
        b_val = atof(argv[1]);
        nu_val = atof(argv[2]);
        v_val = atof(argv[3]);
        target_R = atof(argv[4]);
        nu_bath = atof(argv[5]);
    }
    else if (argc >= 5)
    {
        b_val = atof(argv[1]);
        nu_val = atof(argv[2]);
        v_val = atof(argv[3]);
        target_R = atof(argv[4]);
    }
    else if (argc >= 4)
    {
        b_val = atof(argv[1]);
        nu_val = atof(argv[2]);
        v_val = atof(argv[3]);
    }

    stringstream ss;
    ss << fixed << setprecision(3);
    ss << "_b" << b_val << "_nu" << nu_val << "_v" << v_val << "_N200_R" << (int)target_R << "_nuBath" << nu_bath;
    string suffix = ss.str();
    string RESULTS_DIR = "results/results" + suffix;

    DATA_DIR = RESULTS_DIR + "/data";
    COM_DIR = RESULTS_DIR + "/COMdata";

    Simulation sim;
    double current_time = 0.0;

    if (resume_frame > 0)
    {
        bool success = resumeSwarm(sim, resume_frame, current_time, b_val, nu_val, v_val);
        if (!success)
        {
            cout << "Failed to resume from frame " << resume_frame << ". Exiting." << endl;
            return 1;
        }
    }
    else
    {
        initializeSwarm(sim, b_val, nu_val, v_val);
    }

    int start_step = resume_frame * SAVE_EVERY_STEPS;
    int run_extra_steps = (int)(TOTAL_TIME / DT);
    int final_step = start_step + run_extra_steps;
    int frame_count = resume_frame;

    if (resume_frame > 0)
    {
        start_step++; // Start integrating the next step
        frame_count++; // Next frame to save is resume_frame + 1
    }

    cout << "Starting Simulation loop with b=" << b_val << ", nu=" << nu_val << ", v=" << v_val << ", TargetR=" << target_R << "..." << endl;

    // --- Fine-Tunable Stepped Shrink Parameters ---
    int initial_wait_steps = 3.0 / DT;        // Wait 3 seconds at the start before any shrinking begins

    // Fine-tune these cycle configurations:
    int num_shrink_cycles = 20;               // Break the total radial drop into this many cyclic steps
    int active_shrink_steps = 0.5 / DT;       // Actively shrink for 0.5 seconds per cycle
    int relaxation_steps = 3.0 / DT;          // Wait/relax for 2.0 seconds per cycle (gives swimmers time to restructure)

    int cycle_steps = active_shrink_steps + relaxation_steps;

    double R_drop_per_cycle = 0.0;
    if (RADIUS > target_R && num_shrink_cycles > 0) {
        R_drop_per_cycle = (RADIUS - target_R) / (double)num_shrink_cycles;
    }
    double R_decrease_per_step = 0.0;
    if (active_shrink_steps > 0) {
        R_decrease_per_step = R_drop_per_cycle / (double)active_shrink_steps;
    }

    // Cross-platform directory creation (C++11 compatible)
    MKDIR(RESULTS_DIR);
    MKDIR(DATA_DIR);
    MKDIR(COM_DIR);
    //  force - velocity - position
    // --- VELOCITY VERLET INITIALIZATION ---
    // Compute forces at t_start before the loop
    double t = current_time;
    for (auto &swimmer : sim.swarm)
    {
        swimmer.computeInternalForces(t);
    }
    sim.applyStericForces();
    sim.handleCircularBoundary(); // Note: This might reflect v(0) if initially overlapping (unlikely)

    //  force - velocity - position
    for (int step = start_step; step <= final_step; step++)
    {
        double current_t = step * DT;

        // --- Stepped Shrink Execution Logic ---
        if (step >= start_step + initial_wait_steps && sim.current_R > target_R)
        {
            int steps_since_shrink_started = (step - start_step) - initial_wait_steps;

            // Allow shrinking as long as we haven't completed all cycles yet
            if (steps_since_shrink_started < num_shrink_cycles * cycle_steps)
            {
                int step_in_current_cycle = steps_since_shrink_started % cycle_steps;

                // Active shrink phase within the cycle
                if (step_in_current_cycle < active_shrink_steps)
                {
                    sim.current_R -= R_decrease_per_step;
                    if (sim.current_R < target_R)
                        sim.current_R = target_R;
                }
            }
        }

        // 1. First Half-Kick: v(t + dt/2) = v(t) + 0.5 * a(t) * dt
        // We do NOT add swimming velocity here (it's added at the end or distributed)
        // To strictly follow "add V0 every step", we add it once per full step.
        // We'll add it in the second half.
        for (auto &swimmer : sim.swarm)
        {
            swimmer.updateVelocities(0.5 * DT, false);
        }

        // 2. Drift: r(t + dt) = r(t) + v(t + dt/2) * dt
        for (auto &swimmer : sim.swarm)
        {
            swimmer.updatePositions(DT);
        }

        // 3. Compute Forces at new position: a(t + dt)
        double t_next = (step + 1) * DT;
        for (auto &swimmer : sim.swarm)
        {
            swimmer.computeInternalForces(t_next);
        }
        sim.applyStericForces();
        sim.handleCircularBoundary(); // Reflects v(t + dt/2) if collision occurs

        // 4. Second Half-Kick: v(t + dt) = v(t + dt/2) + 0.5 * a(t + dt) * dt
        // We Add Swimming Velocity HERE (once per step)
        for (auto &swimmer : sim.swarm)
        {
            swimmer.updateVelocities(0.5 * DT, true);
        }

        // 5. Apply Andersen Thermostat to regulate temperature
        // target_temperature = 1.0 (can be tweaked to heat/cool)
        // collision_freq controls how strongly it couples to the bath
        sim.applyAndersenThermostat(DT, 1.0, nu_bath);

        // save frame
        if (step % SAVE_EVERY_STEPS == 0)
        {
            saveFrameForGnuplot(sim, frame_count, t_next);
            saveCOMData(sim, frame_count);

            // progress bar
            if (frame_count % 10 == 0)
            {
                cout << "\rFrame " << frame_count << " saved (t=" << t_next << ")" << flush;
            }
            frame_count++;
        }
    }

    cout << "\nDone. " << frame_count << " frames generated." << endl;

    // Stop chronometer and print localized timestamp + duration
    auto system_end_time = std::chrono::system_clock::now();
    std::time_t end_time_t = std::chrono::system_clock::to_time_t(system_end_time);
    std::chrono::duration<double> elapsed_seconds = system_end_time - system_start_time;

    cout << "========================================================\n";
    cout << "Simulation Start Time: " << std::ctime(&start_time_t);
    cout << "Simulation End Time:   " << std::ctime(&end_time_t);
    cout << "Total Computation Time: " << elapsed_seconds.count() << " seconds.\n";
    cout << "========================================================\n";

    return 0;
}
