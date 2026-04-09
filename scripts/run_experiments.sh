#!/bin/bash


# Prevent Mac from sleeping during execution (Mac ONLY)
if [ "$(uname)" == "Darwin" ]; then
    if [ -z "$CAFFEINATED" ]; then
        export CAFFEINATED=1
        echo "Restarting script with caffeinate to prevent Mac from sleeping..."
        exec caffeinate -s -i "$0" "$@"
    fi
fi

# Move to root directory after caffeinate launch so that everything runs correctly
cd "$(dirname "$0")/.." || exit

# Compile the executable
echo "Compiling C++ code..."
g++ src/cpp/main.cpp -Isrc/headers -std=c++11 -O3 -o build/sim_executable

if [ $? -ne 0 ]; then
    echo "Compilation failed! Exiting."
    exit 1
fi
# tune these values for multiple configurations of simulation
B_VALS=(0.15)
NU_VALS=(0.001)
V_VALS=(1.0 2.0 4.0)
R_VALS=(100 75)
NU_BATH_VALS=(1.0 0.5 0.01 0.05)

# Create a temporary directory to hold shell scripts instead of text
mkdir -p .job_scripts
JOB_ID=0

for b in "${B_VALS[@]}"; do
    for nu in "${NU_VALS[@]}"; do
        for v in "${V_VALS[@]}"; do
            for r in "${R_VALS[@]}"; do
                for nu_bath in "${NU_BATH_VALS[@]}"; do
                     SUFFIX="_b${b}_nu${nu}_v${v}_N200_R${r}_nuBath${nu_bath}"
                     RES_DIR="results${SUFFIX}"
                     CMD="./build/sim_executable $b $nu $v $r $nu_bath"

                     echo "$CMD" > ".job_scripts/job_${JOB_ID}.sh"
                     ((JOB_ID++))
                done
            done
        done
    done
done

# Determine the number of logical CPUs natively across any OS securely
if [ "$(uname)" == "Darwin" ]; then
    CORES=$(sysctl -n hw.logicalcpu 2>/dev/null || echo 4)
elif command -v nproc &> /dev/null; then
    # Ubuntu and Linux / WSL Windows / Anaconda Bash natively
    CORES=$(nproc 2>/dev/null || echo 4)
else
    # Raw unmapped Windows fallback
    CORES=${NUMBER_OF_PROCESSORS:-4}
fi
# Use all cores except 1, so the system doesn't freeze
JOBS=$((CORES > 2 ? CORES - 1 : 1))

echo "======================================"
echo "Found $CORES CPU cores. Safely running $JOBS simulations in parallel."
echo "======================================"

# Send script paths directly to bash execution (bypassing the 255-char substitution limit natively in xargs)
ls .job_scripts/job_*.sh | xargs -L 1 -P "$JOBS" bash

# Clean up
rm -rf .job_scripts

echo "======================================"
echo "All parameter combinations completed!"
