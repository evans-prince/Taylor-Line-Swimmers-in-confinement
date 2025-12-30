#include <iostream>
#include <vector>
#include <cmath>
#include <fstream>

using namespace std;

const double PI = 3.141592653589793;

// ============================================================
// CONFIGURABLE PARAMETERS - ASK PROFESSOR FOR EXACT VALUES
// ============================================================

// Parameters NOT explicitly given in paper (need confirmation):
double NU = 0.005;   // Beating frequency ν (paper range: 0.001 - 0.009)
double GAMMA = 10.0; // Damping coefficient (not in paper - uses MPCD instead)
double PHI = 0.0;    // Initial phase φ (paper: randomly assigned for each swimmer)

// Parameters FROM paper:
const int N_BEADS = 100;          // Number of beads (paper: N = 100)
const double A0 = 1.0;            // Unit length a0
const double L0 = 0.5 * A0;       // Equilibrium bond length (paper: l = 0.5 * a0)
const double B_AMPLITUDE = 0.15;  // Wave amplitude (paper: b = 0.15, gives 10% of wavelength)
const double D_SPRING = 1e6;      // Spring constant (paper: D = 10^6)
const double KB_T = 1.0;          // Thermal energy (paper: "kBT is taken to be unity")
const double KAPPA_OVER_LC = 5e3; // Paper: κ/Lc = 5×10³ kBT
const double MASS = 10.0;         // Bead mass (paper: 10m)

// Calculated values (using paper's stated Lc = 50 a₀):
const double LC = 50.0 * A0;                    // Contour length (paper: "Lc = 50a₀")
const double KAPPA = KAPPA_OVER_LC * LC * KB_T; // κ = 5000 × 50 × 1 = 250,000

// ============================================================

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

    // Parameters (using global configurable values)
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

    // Constructor - uses global configurable parameters
    TaylorLine()
    {
        // From paper (fixed values)
        N = N_BEADS;
        a0 = A0;
        l0 = L0;
        b = B_AMPLITUDE;
        D_spring = D_SPRING;
        kappa = KAPPA;
        mass = MASS;

        // Configurable parameters (ask professor)
        nu = NU;
        gamma = GAMMA;
        phi = PHI;
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

        for (int i = 0; i < N - 2; i++)
        {
            // Curvature from Eq. (1): c(i,t) = b * sin[2π(νt + 2i/N) + φ]
            double c = b * sin(2.0 * PI * (nu * t + 2.0 * i / N) + phi);

            // Rotation angle α = l0 * c
            double alpha = l0 * c;

            double ca = cos(alpha);
            double sa = sin(alpha);

            // Bond vectors
            double tix = beads[i + 1].x - beads[i].x;
            double tiy = beads[i + 1].y - beads[i].y;
            double tipx = beads[i + 2].x - beads[i + 1].x;
            double tipy = beads[i + 2].y - beads[i + 1].y;

            // Rotated bond vector R(α) × t_i
            double rtix = ca * tix - sa * tiy;
            double rtiy = sa * tix + ca * tiy;

            // Bending force = κ × (t_{i+1} - R(α) × t_i)
            double fx = kappa * (tipx - rtix);
            double fy = kappa * (tipy - rtiy);

            // Apply forces (Newton's 3rd law)
            beads[i + 1].fx += fx;
            beads[i + 1].fy += fy;

            beads[i].fx -= fx;
            beads[i].fy -= fy;

            beads[i + 2].fx -= fx;
            beads[i + 2].fy -= fy;
        }
    }
};