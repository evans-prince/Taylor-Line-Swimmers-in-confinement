#!/bin/bash

# Move to root directory safely
cd "$(dirname "$0")/.." || exit
ROOT_DIR=$(pwd)

# Cross Platform Execution for Windows/Ubuntu/Mac seamlessly mapping python commands
if command -v python3 &>/dev/null; then
    PYTHON_CMD="python3"
else
    PYTHON_CMD="python"
fi

echo "Starting plot generation for all results directories..."

for DIR in results/results_*; do
    if [ -d "$DIR" ]; then
        echo "=========================================="
        echo "Processing $DIR..."
        
        # Move inside the results directory so 'data' and 'COMdata' match the original script logic
        cd "$DIR" || continue
        
        # Extract R_val mathematically from the directory title dynamically
        R_VAL=$(echo "$DIR" | grep -o 'R[0-9]*' | sed 's/R//')
        
        # 1. Run RMS script (reads 'COMdata' from current working dir)
        echo " -> Generating RMS Plot..."
        $PYTHON_CMD "$ROOT_DIR/scripts/plot_rms_from_data.py"
        
        # 2. Run Velocity Correlation script
        # We create a temporary script here replacing plt.show() with plt.savefig() so it doesn't block headless execution
        echo " -> Generating Velocity Correlation Plot..."
        sed 's/plt.show()/plt.savefig("velocity_correlation.png", dpi=300)/' "$ROOT_DIR/scripts/plot_velocity_correlation.py" > temp_plot_vel.py
        
        # Feed 2.0 fps into the prompt so it doesnt freeze asking for input
        echo "2.0" | $PYTHON_CMD temp_plot_vel.py
        rm -f temp_plot_vel.py
        
        # 3. Generate animation gif
        # animate_script.p expects './data/file%d.txt' which perfectly matches the current working directory structure!
        echo " -> Generating Animation GIF..."
        gnuplot -e "R_val=$R_VAL" "$ROOT_DIR/scripts/animate_script.p"
        
        # Return back to root for the next iteration
        cd "$ROOT_DIR" || exit
    fi
done

echo "=========================================="
echo "All graphs and animations generated securely!"
