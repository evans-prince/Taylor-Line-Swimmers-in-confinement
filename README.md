# 🦠 Taylor Line Swimmers in Confinement
<div align="center">
  <img src="https://img.shields.io/badge/C++-11%2B-blue.svg?style=for-the-badge&logo=c%2B%2B" alt="C++ Version">
  <img src="https://img.shields.io/badge/Python-3.x-yellow.svg?style=for-the-badge&logo=python" alt="Python">
  <img src="https://img.shields.io/badge/Simulation-Active_Matter-brightgreen.svg?style=for-the-badge" alt="Simulation">
  <img src="https://img.shields.io/badge/Thermostat-Andersen-orange.svg?style=for-the-badge" alt="Physics">
</div>
<br/>

Welcome to the **Taylor Line Swimmers in Confinement** simulation framework. 

📚 **[Read the Full Technical Progress Report Here](docs/report.pdf)**

### What is this project doing?
We are computationally investigating the "self-organization" of artificial swimmers trapped within a circular confining boundary. By utilizing the framework originally derived from G.I. Taylor's 1951 analysis of low-Reynolds-number kinematics, we monitor phase separation, spatial clustering, and velocity correlations to evaluate how shifting active parameters ($\nu$ and $b$) dictate macroscopic state changes over prolonged durations [1, 2].

### How are we doing it?
We custom-engineered a highly stable Molecular Dynamics (MD) engine in C++ explicitly targeting active matter segregations:
- Each swimmer is structurally modeled as a **"Taylor Line"**—a chain of identical monomers constrained by Hookean geometry.
- We force a propagating transverse curvature wave along the filament spine, artificially breaking time-reversal symmetry to generate active thrust consistent with biological microorganisms [1].
- To prevent unphysical overlap, discrete beads rigorously obey pure repulsive **Weeks-Chandler-Andersen (WCA) / Truncated Lennard-Jones** potential energies [2].
- As the confinement boundary contracts during simulated epochs, the injected radial energy is suppressed using an **Andersen Thermostat**, perfectly sustaining the intended NVT thermodynamic ensemble.

<p align="center">
  <img src="results/results_b0.200_nu0.005_v0.100_N200_R150/swimmer_simulation.gif" width="45%" alt="Swimmer Simulation R=150">
  <img src="results/results_b0.100_nu0.005_v0.200_N200_R200/swimmer_simulation.gif" width="45%" alt="Swimmer Simulation R=200">
</p>
<p align="center">
  <img src="results/results_b0.200_nu0.005_v0.100_N200_R150/velocity_correlation.png" width="45%" alt="Velocity Correlation Plot">
  <img src="results/results_b0.200_nu0.005_v0.100_N200_R150/rms_plot_from_data.png" width="45%" alt="RMS Translation Log Profile">
</p>

## 🔬 Deep Scientific Overview

This project models deformable, self-propelled entities based on the classic **Taylor Line** framework. The collective physical properties of the swarm are rigorously updated via an explicit time-stepping procedure.

- **Internal Mechanics:** Hydrodynamic constraints are mapped onto a bead-spring model. Swimmers possess Hookean elasticity alongside curvature-dependent bending rigidities. 
- **Particle-Particle Interactions:** Steric repulsion between discrete monomers utilizes a truncated **Lennard-Jones (WCA) potential**.
- **Thermodynamic Regulation:** Energy conservation against adiabatic compression (shrinking boundaries) is actively maintained by an **Andersen Thermostat**, which randomly thermalizes particles back to a target canonical temperature ($NVT$ Ensemble).
- **Integration Scheme:** The discretized equations of motion are propagated through time via a highly stable **Velocity Verlet** temporal integrator.

---

## 🏗️ Architecture & Organization

The codebase is professionally partitioned separating core algorithmic mechanics from automation and high-level Python visualizations.

```text
📦 btp
 ┣ 📂 src/                  # Core MD Simulation Engine
 │ ┣ 📂 cpp/                # Velocity Verlet integration & potentials
 │ ┗ 📂 headers/            # Taylor Line classes & topological config
 ┣ 📂 scripts/              # Bash automation & Python analysis pipelines
 ┣ 📂 build/                # Highly-optimized compiled binaries
 ┣ 📂 results/              # Procedurally generated state trajectories
 ┗ 📂 docs/                 # LaTeX typesetting and log files
```

---

## 🚀 Execution & Automation

The repository utilizes headless bash scripts to automatically sweep through hyperparameter phase spaces, securely managing multithreaded jobs across optimal CPU cores. 

### 1. Compile & Batch Run
To initialize parallelized sweeps modifying amplitude ($b$), frequency ($\nu$), and spatial confinement radii ($R$):
```bash
bash scripts/run_experiments.sh
```
*Note: The script intelligently partitions jobs using MacOS native hardware core counting and prevents the daemon from sleeping using `caffeinate`.*

### 2. Analysis & Rendering
The post-processing framework crawls resulting topographical state mappings (`COMdata`) and autonomously renders physics animations:
```bash
bash scripts/generate_plots.sh
```
This generates:
- **Root Mean Square (RMS) Displacement Plots:** Isolating ballistic vs. diffusive regimes.
- **Velocity Autocorrelation Logs:** Extrapolating kinematic properties.
- **Dynamic Swarm Renderings:** Synthesizing native `Gnuplot` state trajectories into `.gif` animations.

---
## Dataset

The dataset is too large to be stored in this repository.

Download it from:
https://csciitd-my.sharepoint.com/:f:/g/personal/ph1221248_iitd_ac_in/IgBVkgZqNjeFQZ-eFpwe6mbXARK7FOuTvwKuDNCn11Wd2kY?e=esN7NM

Instructions:
1. Download
2. Extract
3. Place inside `results/` folder

## 💻 Tech Stack & Dependencies

- **Compiler:** `g++` (C++11 or higher) natively optimized with `-O3` flags.
- **Bash Subsystems:** Requires standard GNU Coreutils (natively supported on Unix/MacOS).
- **Python Plotting:** Base `python3` alongside `matplotlib` and `numpy`.
- **Visuals:** `gnuplot` for live trajectory encoding. 

*Designed and engineered for Advanced Active Matter Physics simulations.*

---

## 📚 References
1. Taylor, G.I., 1951. *Analysis of the swimming of microscopic organisms*. Proceedings of the Royal Society of London. Series A. Mathematical and Physical Sciences, 209(1099), pp.447-461.
2. Agrawal, A. and Babu, S.B., 2018. *Self-organization in a bimotility mixture of model microswimmers*. Physical Review E, 97(2), p.020401.
