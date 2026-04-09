import numpy as np
import matplotlib.pyplot as plt
import glob
import os
import re

# ===== USER INPUT =====
DATA_FOLDER = "COMdata"
XFPS = float(input("Enter xfps: "))
DT = 1.0 / XFPS
# ======================


def extract_number(filename):
    return int(re.findall(r'\d+', filename)[-1])


def read_velocities(filepath):
    velocities = []
    with open(filepath, 'r') as f:
        for line in f:
            if "|" in line:
                parts = line.strip().split("|")
                vel_part = parts[1].strip().split()
                vx = np.float64(vel_part[0])
                vy = np.float64(vel_part[1])
                velocities.append([vx, vy])
    return np.array(velocities, dtype=np.float64)


# Get all files and sort numerically
files = glob.glob(os.path.join(DATA_FOLDER, "file*.txt"))
files = sorted(files, key=extract_number)

# Remove file0.txt
files = [f for f in files if extract_number(f) >= 99]

print("Total frames considered:", len(files))

# Reference velocities at t=0 (double precision)
v0 = read_velocities(files[0]).astype(np.float64)
N = v0.shape[0]  # number of swimmers

# Per-particle normalization: v_i(0) · v_i(0) for each swimmer i
v0_dot_v0 = np.sum(v0 * v0, axis=1, dtype=np.float64)  # shape (N,)

correlation = []

for file in files:
    vt = read_velocities(file).astype(np.float64)
    # v_i(t) · v_i(0) for each swimmer i
    vt_dot_v0 = np.sum(vt * v0, axis=1, dtype=np.float64)  # shape (N,)
    # C_vv(t) = (1/N) * sum_i [ v_i(t)·v_i(0) / (v_i(0)·v_i(0)) ]
    Cvv_t = np.mean(vt_dot_v0 / v0_dot_v0)
    correlation.append(Cvv_t)

correlation = np.array(correlation, dtype=np.float64)

time = np.arange(len(files), dtype=np.float64) * DT


# ===== Plot =====
plt.figure()
plt.plot(time[0:], correlation[0:], linestyle='-')
plt.xscale('log')
plt.xlabel("ln(time)")
plt.ylabel("Velocity Correlation")
plt.title("Velocity Autocorrelation Function")
plt.grid(True)
plt.show()