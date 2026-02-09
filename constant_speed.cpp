/*
 * constant_speed.cpp
 * TaylorLine with constant swimming velocity along head-tail direction
 * 
 * Usage: Set V0 in TaylorLineConfig, then use TaylorLineConstantSpeed instead of TaylorLine
 */

#ifndef TAYLOR_LINE_CONSTANT_SPEED_H
#define TAYLOR_LINE_CONSTANT_SPEED_H

#include "TaylorLine.h"

class TaylorLineConstantSpeed : public TaylorLine {
public:
    double V0;  // Constant swimming speed along head-tail direction
    
    // Constructor with config (uses V0 from config)
    TaylorLineConstantSpeed(const TaylorLineConfig& config) : TaylorLine(config) {
        V0 = config.V0;
    }
    
    // Default constructor
    TaylorLineConstantSpeed() : TaylorLine() {
        V0 = 0.0;
    }
    
    // ----------------------------------------------------------
    // OVERRIDE: UPDATE VELOCITIES FROM FORCES
    // Applies overdamped dynamics: v = μF (velocity proportional to force)
    // Plus constant swimming velocity V0 along head→tail direction
    // ----------------------------------------------------------
    void updateVelocities(double dt) {
        // Compute unit direction from tail (bead 0) to head (last bead)
        double dx = beads[N-1].x - beads[0].x;
        double dy = beads[N-1].y - beads[0].y;
        double dist = sqrt(dx*dx + dy*dy);
        
        // Unit vector along head-tail direction (with safety for zero-length)
        double ux = 0.0, uy = 0.0;
        if (dist > 1e-12) {
            ux = dx / dist;
            uy = dy / dist;
        }
        
        // Constant swimming velocity contribution
        double vSwimX = V0 * ux;
        double vSwimY = V0 * uy;
        
        for (auto &bead : beads) {
            // Acceleration from forces: a = F/m
            double ax = bead.fx / mass;
            double ay = bead.fy / mass;
            
            // Update velocity with damping: v_new = v + a*dt - gamma*v*dt
            bead.vx += ax * dt;
            bead.vy += ay * dt;
            
            // Add constant swimming velocity along head-tail direction
            bead.vx += vSwimX;
            bead.vy += vSwimY;
        }
    }
    
    // Override step to use the new updateVelocities
    void step(double dt, double t) {
        computeInternalForces(t);
        updateVelocities(dt);
        updatePositions(dt);
    }
};

#endif // TAYLOR_LINE_CONSTANT_SPEED_H
