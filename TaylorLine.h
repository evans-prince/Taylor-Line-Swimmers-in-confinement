/*
 * TaylorLine.h
 * Taylor Line Microswimmer Class
 * Based on: Agrawal & Babu, Phys. Rev. E 97, 020401(R) (2018)
 */

#ifndef TAYLOR_LINE_H
#define TAYLOR_LINE_H

#include <vector>
#include <cmath>
#include "TaylorLineConfig.h"

using namespace std;

const double PI = 3.141592653589793;

// ==================== BEAD STRUCTURE ====================
struct Bead
{
    double x, y;   // position
    double vx, vy; // velocity
    double fx, fy; // force
};

// ==================== TAYLOR LINE CLASS ====================
class TaylorLine
{
public:
    vector<Bead> beads;

    // Parameters
    int N;           // Number of beads
    double l0;       // Equilibrium bond length
    double a0;       // Unit length
    double nu;       // Beating frequency ν
    double phi;      // Initial phase φ
    double b;        // Amplitude parameter
    double D_spring; // Spring constant
    double kappa;    // Bending rigidity κ
    double mass;     // Bead mass
    double gamma;    // Damping coefficient

    // Default constructor - uses all paper default values
    TaylorLine() : TaylorLine(TaylorLineConfig{}) {}

    // Constructor with configurable parameters
    TaylorLine(const TaylorLineConfig &config)
    {
        N = config.n_beads;
        a0 = config.a0;
        l0 = config.l0 * config.a0; // l0 = 0.5 * a0
        b = config.b_amplitude;
        D_spring = config.D_spring;
        kappa = config.kappa;
        mass = config.mass;
        nu = config.nu;
        gamma = config.gamma;
        phi = config.phi;
    }

    // Initialize beads in a straight line with small perturbation
    void initialize()
    {
        beads.clear();
        for (int i = 0; i < N; i++)
        {
            Bead bead;
            bead.x = i * l0;
            // Small initial perturbation to break symmetry
            bead.y = 0.01 * sin(2.0 * PI * i / N);
            bead.vx = 0.0;
            bead.vy = 0.0;
            bead.fx = 0.0;
            bead.fy = 0.0;
            beads.push_back(bead);
        }
    }

    // ----------------------------------------------------------
    // COMPUTE INTERNAL FORCES (Spring + Bending from paper)
    // ----------------------------------------------------------
    void computeInternalForces(double t)
    {

        // Reset all forces
        for (auto &bead : beads)
        {
            bead.fx = 0.0;
            bead.fy = 0.0;
        }

        // ========== 1. SPRING FORCES (Hooke's Law) ==========
        // Paper: "Hooke's spring potential with equilibrium distance l = 0.5*a0"
        for (int i = 0; i < N - 1; i++)
        {
            double dx = beads[i + 1].x - beads[i].x;
            double dy = beads[i + 1].y - beads[i].y;
            double dist = sqrt(dx * dx + dy * dy) + 1e-10;

            // F = D * (dist - l0) * direction
            double F = D_spring * (dist - l0);
            double fx = F * dx / dist;
            double fy = F * dy / dist;

            // Newton's 3rd law
            beads[i].fx += fx;
            beads[i].fy += fy;
            beads[i + 1].fx -= fx;
            beads[i + 1].fy -= fy;
        }

        // ========== 2. BENDING / PROPULSION FORCES ==========
        // From paper: VB = (κ/2) Σ [t_{i+1} - R(α_i) × t_i]²
        // Using rotation matrix formulation
        //
        // Force distribution (from paper):
        //   F_i   = -κ R(α)^T A_i
        //   F_i+1 =  κ (I + R(α)^T) A_i
        //   F_i+2 = -κ A_i
        // where A_i = t_{i+1} - R(α) t_i

        for (int i = 0; i < N - 2; i++)
        {
            // Curvature from Eq. (1): c(i,t) = b * sin[2π(νt + 2(i+1)/N) + φ]
            double c = b * sin(2.0 * PI * (nu * t + 2.0 * (i + 1) / N) + phi);

            // Rotation angle α = l0 * c
            double alpha = l0 * c;

            double ca = cos(alpha);
            double sa = sin(alpha);

            // Bond vectors
            double tix = beads[i + 1].x - beads[i].x;
            double tiy = beads[i + 1].y - beads[i].y;
            double tipx = beads[i + 2].x - beads[i + 1].x;
            double tipy = beads[i + 2].y - beads[i + 1].y;

            // Rotated bond vector R(α) t_i
            double rtix = ca * tix - sa * tiy;
            double rtiy = sa * tix + ca * tiy;

            // A_i = t_{i+1} - R(α) t_i (deviation vector)
            double Ax = tipx - rtix;
            double Ay = tipy - rtiy;

            // R(α)^T A_i  (transpose of rotation matrix applied to A)
            // R^T = [[cos(α), sin(α)], [-sin(α), cos(α)]]
            double RtAx = ca * Ax + sa * Ay;
            double RtAy = -sa * Ax + ca * Ay;

            // Force on bead i: F_i = -κ R(α)^T A_i
            beads[i].fx += -kappa * RtAx;
            beads[i].fy += -kappa * RtAy;

            // Force on bead i+1: F_{i+1} = κ (I + R(α)^T) A_i
            // = κ * A + κ * R^T * A
            beads[i + 1].fx += kappa * (Ax + RtAx);
            beads[i + 1].fy += kappa * (Ay + RtAy);

            // Force on bead i+2: F_{i+2} = -κ A_i
            beads[i + 2].fx += -kappa * Ax;
            beads[i + 2].fy += -kappa * Ay;
        }
    }

    // ----------------------------------------------------------
    // UPDATE VELOCITIES FROM FORCES
    // Applies: a = F/m, then v += a*dt with damping
    // ----------------------------------------------------------
    // ----------------------------------------------------------
    // UPDATE VELOCITIES FROM FORCES
    // Applies: a = F/m, then v += a*dt with damping
    // ----------------------------------------------------------
    virtual void updateVelocities(double dt, bool add_swimming = true)
    {
        for (auto &bead : beads)
        {
            // Acceleration from forces: a = F/m
            double ax = bead.fx / mass;
            double ay = bead.fy / mass;

            // Update velocity with damping: v_new = v + a*dt - gamma*v*dt
            // This is equivalent to: dv/dt = a - gamma*v
            bead.vx += ax * dt;
            bead.vy += ay * dt;
        }
    }
    
    // ----------------------------------------------------------
    // UPDATE POSITIONS (Euler integration)
    // Applies: r += v*dt
    // ----------------------------------------------------------
    void updatePositions(double dt)
    {
        for (auto &bead : beads)
        {
            bead.x += bead.vx * dt;
            bead.y += bead.vy * dt;
        }
    }

    // ----------------------------------------------------------
    // SINGLE TIME STEP
    // Combines force computation, velocity update, and position update
    // Call this repeatedly to advance the simulation
    // ----------------------------------------------------------
    void step(double dt, double t)
    {
        computeInternalForces(t);
        updateVelocities(dt);
        updatePositions(dt);
    }
};

// ==================== TAYLOR LINE WITH CONSTANT SPEED ====================
// Derived class that adds constant swimming velocity along head-tail direction
class TaylorLineConstantSpeed : public TaylorLine
{
public:
    double V0; // Constant swimming speed along head-tail direction

    // Constructor with config (uses V0 from config)
    TaylorLineConstantSpeed(const TaylorLineConfig &config) : TaylorLine(config)
    {
        V0 = config.V0;
    }

    // Default constructor
    TaylorLineConstantSpeed() : TaylorLine()
    {
        V0 = 0.0;
    }

    // ----------------------------------------------------------
    // OVERRIDE: UPDATE VELOCITIES FROM FORCES
    // Applies overdamped dynamics plus constant swimming velocity
    // V0 along head→tail direction
    // ----------------------------------------------------------
    void updateVelocities(double dt, bool add_swimming = true)
    {
        // Compute unit direction from tail (bead 0) to head (last bead)
        double dx = beads[N - 1].x - beads[0].x;
        double dy = beads[N - 1].y - beads[0].y;
        double dist = sqrt(dx * dx + dy * dy);

        // Unit vector along head-tail direction (with safety for zero-length)
        double ux = 0.0, uy = 0.0;
        if (dist > 1e-12)
        {
            ux = dx / dist;
            uy = dy / dist;
        }

        // Constant swimming velocity contribution
        double vSwimX = V0 * ux;
        double vSwimY = V0 * uy;

        for (auto &bead : beads)
        {
            // Acceleration from forces: a = F/m
            double ax = bead.fx / mass;
            double ay = bead.fy / mass;

            // Update velocity with damping
            bead.vx += ax * dt;
            bead.vy += ay * dt;

            // Add constant swimming velocity along head-tail direction
            if (add_swimming) {
                bead.vx += vSwimX;
                bead.vy += vSwimY;
            }
        }
    }

    // Override step to use the new updateVelocities
    void step(double dt, double t)
    {
        computeInternalForces(t);
        updateVelocities(dt);
        updatePositions(dt);
    }
};

#endif // TAYLOR_LINE_H
