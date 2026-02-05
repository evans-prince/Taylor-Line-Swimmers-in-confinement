/*
 * Force Balance Check for Taylor Line Microswimmer
 * 
 * This program verifies that the sum of all internal forces equals zero
 * (Newton's 3rd Law conservation check)
 */

#include <iostream>
#include <iomanip>
#include <cmath>
#include "TaylorLine.h"

using namespace std;

// Check sum of all forces at a given time
void checkForceBalance(TaylorLine& swimmer, double t) {
    // Compute forces at time t
    swimmer.computeInternalForces(t);
    
    // Sum all forces
    double sumFx = 0.0;
    double sumFy = 0.0;     
    
    for (int i = 0; i < swimmer.N; i++) {
        sumFx += swimmer.beads[i].fx;
        sumFy += swimmer.beads[i].fy;
    }
    
    double totalForce = sqrt(sumFx * sumFx + sumFy * sumFy);
    
    cout << fixed << setprecision(6);
    cout << "t = " << setw(8) << t 
         << " | Sum Fx = " << setw(15) << sumFx 
         << " | Sum Fy = " << setw(15) << sumFy 
         << " | |F_total| = " << setw(15) << totalForce;
    
    // Check if force is effectively zero (numerical tolerance)
    if (totalForce < 1e-10) {
        cout << " [OK - Zero net force]" << endl;
    } else {
        cout << " [WARNING - Non-zero net force!]" << endl;
    }
}

// Print detailed force breakdown for each bead
void printForceDetails(TaylorLine& swimmer, double t) {
    swimmer.computeInternalForces(t);
    
    cout << "\n========== Force Details at t = " << t << " ==========" << endl;
    cout << setw(6) << "Bead" 
         << setw(15) << "Fx" 
         << setw(15) << "Fy" << endl;
    cout << string(36, '-') << endl;
    
    double sumFx = 0.0, sumFy = 0.0;
    
    for (int i = 0; i < swimmer.N; i++) {
        double fx = swimmer.beads[i].fx;
        double fy = swimmer.beads[i].fy;
        
        sumFx += fx;
        sumFy += fy;
        
        cout << setw(6) << i 
             << setw(15) << fx 
             << setw(15) << fy << endl;
    }
    
    cout << string(36, '-') << endl;
    cout << setw(6) << "SUM" 
         << setw(15) << sumFx 
         << setw(15) << sumFy << endl;
}

int main() {
    cout << "=============================================" << endl;
    cout << "  Taylor Line Force Balance Verification    " << endl;
    cout << "=============================================" << endl;
    
    // Create swimmer with default parameters
    TaylorLine swimmer;
    swimmer.initialize();
    
    cout << "\nSwimmer Parameters:" << endl;
    cout << "  N = " << swimmer.N << " beads" << endl;
    cout << "  kappa = " << swimmer.kappa << endl;
    cout << "  D_spring = " << swimmer.D_spring << endl;
    cout << "  nu = " << swimmer.nu << endl;
    cout << endl;
    
    // Test 1: Check force balance at multiple time points
    cout << "=== Test 1: Force Balance at Various Times ===" << endl;
    for (double t = 0.0; t <= 1.0; t += 0.1) {
        checkForceBalance(swimmer, t);
    }
    
    // Test 2: Check during simulation
    cout << "\n=== Test 2: Force Balance During Simulation ===" << endl;
    double dt = 0.0001;
    double t = 0.0;
    
    for (int step = 0; step < 1000; step++) {
        swimmer.step(dt, t);
        t += dt;
        
        if (step % 100 == 0) {
            checkForceBalance(swimmer, t);
        }
    }
    
    // Test 3: Detailed force breakdown at t=0
    printForceDetails(swimmer, 0.0);
    
    // Test 4: Detailed force breakdown at t=0.5
    printForceDetails(swimmer, 0.5);
    
    cout << "\n=============================================" << endl;
    cout << "  Verification Complete                      " << endl;
    cout << "=============================================" << endl;
    
    return 0;
}
