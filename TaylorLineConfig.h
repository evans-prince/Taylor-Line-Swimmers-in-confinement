#ifndef TAYLOR_LINE_CONFIG_H
#define TAYLOR_LINE_CONFIG_H

struct TaylorLineConfig
{
    // ==== Physical Parameters (from paper) ====
    int n_beads = 100;         // Number of beads (paper: N = 100)
    double a0 = 1.0;           // Unit length a0
    double l0 = 0.5;           // Equilibrium bond length (paper: l = 0.5 * a0)
    double b_amplitude = 0.15; // Wave amplitude (paper: b = 0.15)
    double D_spring = 1e6;     // Spring constant (paper: D = 10^6)
    double kappa = 250000.0;   // Bending rigidity κ (paper: κ/Lc = 5×10³, Lc = 50a₀)
    double mass = 10.0;        // Bead mass (paper: 10m)

    // ==== Tunable Parameters (may need adjustment) ====
    double nu = 0.001;   // Beating frequency ν (paper range: 0.001 - 0.009)
    double phi = 0.0;    // Initial phase φ (paper: random for each swimmer)
    double gamma = 10.0; // Damping coefficient (not in paper - uses MPCD)
    double V0 = 0.0;     // Constant swimming speed along head→tail direction

    // ==== Derived/Calculated Values ====
    double kb_T = 1.0; // Thermal energy (paper: "kBT is taken to be unity")
    double Lc = 50.0;  // Contour length (paper: Lc = 50a₀)

    // Constructor with all defaults from paper
    TaylorLineConfig() = default;

    // Helper to recalculate kappa from κ/Lc ratio
    void setKappaFromRatio(double kappa_over_Lc)
    {
        kappa = kappa_over_Lc * Lc * kb_T;
    }
};

#endif
