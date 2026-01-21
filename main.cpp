/*
 * Taylor Line Microswimmer Simulation
 * Based on: Agrawal & Babu, Phys. Rev. E 97, 020401(R) (2018)
 * 
 * Runs simulation for 10 seconds at 20 FPS
 * Outputs each frame as a separate CSV file
 */

#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <sys/stat.h>
#include "TaylorLine.h"

using namespace std;

// Create directory (cross-platform)
void createDirectory(const string& path) {
    #ifdef _WIN32
        system(("mkdir \"" + path + "\" 2>nul").c_str());
    #else
        mkdir(path.c_str(), 0755);
    #endif
}

// Save frame to CSV file
void saveFrame(const TaylorLine& swimmer, int frameNumber, const string& outputDir) {
    // Create filename with zero-padded frame number
    stringstream ss;
    ss << outputDir << "/frame_" << setfill('0') << setw(4) << frameNumber << ".csv";
    string filename = ss.str();
    
    ofstream file(filename);
    if (!file.is_open()) {
        cerr << "Error: Could not open " << filename << endl;
        return;
    }
    
    // Write header
    file << "bead_index,x,y,vx,vy,fx,fy" << endl;
    
    // Write bead data
    for (int i = 0; i < swimmer.N; i++) {
        file << i << ","
             << swimmer.beads[i].x << ","
             << swimmer.beads[i].y << ","
             << swimmer.beads[i].vx << ","
             << swimmer.beads[i].vy << ","
             << swimmer.beads[i].fx << ","
             << swimmer.beads[i].fy << endl;
    }
    
    file.close();
}

int main() {
    // ========== Simulation Parameters ==========
    const double totalTime = 10.0;      // Total simulation time (seconds)
    const double fps = 20.0;            // Frames per second
    const double dt = 0.0001;           // Integration time step (from reference code)
    
    const double frameInterval = 1.0 / fps;  // Time between frames (0.05 sec)
    const int totalFrames = static_cast<int>(totalTime * fps);  // 200 frames
    
    // Output directory
    string outputDir = "frames";
    createDirectory(outputDir);
    
    // ========== Initialize Swimmer ==========
    TaylorLine swimmer;
    swimmer.initialize();
    
    cout << "========================================" << endl;
    cout << "Taylor Line Microswimmer Simulation" << endl;
    cout << "========================================" << endl;
    cout << "Parameters:" << endl;
    cout << "  Beads (N) = " << swimmer.N << endl;
    cout << "  Frequency (nu) = " << swimmer.nu << endl;
    cout << "  Bending rigidity (kappa) = " << swimmer.kappa << endl;
    cout << "  Spring constant (D) = " << swimmer.D_spring << endl;
    cout << "  Time step (dt) = " << dt << endl;
    cout << "----------------------------------------" << endl;
    cout << "Simulation:" << endl;
    cout << "  Total time = " << totalTime << " sec" << endl;
    cout << "  FPS = " << fps << endl;
    cout << "  Total frames = " << totalFrames << endl;
    cout << "  Output directory = " << outputDir << "/" << endl;
    cout << "========================================" << endl;
    
    // ========== Run Simulation ==========
    double t = 0.0;
    int frameCount = 0;
    double nextFrameTime = 0.0;
    
    // Save initial frame (frame 0)
    saveFrame(swimmer, frameCount, outputDir);
    cout << "Saved frame " << frameCount << " at t = " << t << " sec" << endl;
    frameCount++;
    nextFrameTime = frameInterval;
    
    // Main simulation loop
    int totalSteps = static_cast<int>(totalTime / dt);
    
    for (int step = 0; step < totalSteps; step++) {
        // Perform one simulation step
        swimmer.step(dt, t);
        t += dt;
        
        // Check if it's time to save a frame
        if (t >= nextFrameTime && frameCount < totalFrames) {
            saveFrame(swimmer, frameCount, outputDir);
            
            // Progress update every 10 frames
            if (frameCount % 10 == 0) {
                cout << "Saved frame " << frameCount << " at t = " 
                     << fixed << setprecision(2) << t << " sec" << endl;
            }
            
            frameCount++;
            nextFrameTime = frameCount * frameInterval;
        }
    }
    
    // Save final frame if needed
    if (frameCount < totalFrames) {
        saveFrame(swimmer, frameCount, outputDir);
        cout << "Saved frame " << frameCount << " at t = " << t << " sec" << endl;
    }
    
    cout << "========================================" << endl;
    cout << "Simulation complete!" << endl;
    cout << "Total frames saved: " << frameCount << endl;
    cout << "Output files: " << outputDir << "/frame_0000.csv to frame_" 
         << setfill('0') << setw(4) << (frameCount - 1) << ".csv" << endl;
    cout << "========================================" << endl;
    
    return 0;
}