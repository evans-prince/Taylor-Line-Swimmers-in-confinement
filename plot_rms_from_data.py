import matplotlib.pyplot as plt
import numpy as np
import os
import re
import glob

# ================= CONFIGURATION =================
# Path to data directory containing file0.txt, file1.txt, ...
DATA_DIR = "data"
N_BEADS = 100 
DT_FRAME = 0.5 
OFFSET_TIME = 50.0 

# =================================================

def read_frame_file(filepath):
    swimmers = []
    current_swimmer = []
    
    try:
        with open(filepath, 'r') as f:
            lines = f.readlines()
            
        for line in lines:
            parts = line.split()
            if len(parts) == 2:
                # Coordinate line: x y
                x, y = float(parts[0]), float(parts[1])
                current_swimmer.append((x, y))
            elif not parts and current_swimmer:
                # Empty line indicates end of a swimmer block (in gnuplot format)
                # But sometimes there are double newlines.
                # Logic: If we have beads and hit a newline, save swimmer.
                if len(current_swimmer) > 0:
                     # Check if it matches expected bead count (robustness)
                     # if len(current_swimmer) == N_BEADS: ...
                    swimmers.append(current_swimmer)
                    current_swimmer = []
        
        # Catch the last swimmer if file doesn't end with newline
        if current_swimmer:
            swimmers.append(current_swimmer)
            
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
        return None
        
    return swimmers

def get_middle_bead(swimmer):
    """Returns the (x, y) of the middle bead of the swimmer."""
    # N_BEADS = 100, so middle index is 50 (or 49, doesn't matter much, 50 is fine)
    mid_idx = len(swimmer) // 2
    return swimmer[mid_idx]

def main():
    print(f"Analyzing data from '{DATA_DIR}'...")
    print(f"  Beads per swimmer: {N_BEADS}")
    print(f"  Frame dt: {DT_FRAME}")
    print(f"  Offset Time: {OFFSET_TIME}")
    print(f"  Tracking: MIDDLE BEAD (Index {N_BEADS//2})")

    # 1. Identify all data files and sort them naturally (file1, file2, ..., file10)
    # Using regex to extract frame number
    files = glob.glob(os.path.join(DATA_DIR, "file*.txt"))
    if not files:
        print("No data files found!")
        return

    # Sort files by frame number
    def get_frame_num(fname):
        match = re.search(r'file(\d+)\.txt', os.path.basename(fname))
        return int(match.group(1)) if match else -1

    sorted_files = sorted(files, key=get_frame_num)
    
    # 2. Find the start file (closest to OFFSET_TIME)
    start_frame_idx = int(round(OFFSET_TIME / DT_FRAME))
    
    if start_frame_idx >= len(sorted_files):
        print(f"Error: Offset time {OFFSET_TIME} requires frame {start_frame_idx}, but only {len(sorted_files)} frames found.")
        return

    print(f"Starting analysis from Frame {start_frame_idx} (t = {start_frame_idx * DT_FRAME})")

    # 3. Initialize previous positions with the start frame
    prev_file = sorted_files[start_frame_idx]
    prev_swimmers = read_frame_file(prev_file)
    if not prev_swimmers:
        return
    
    # Store previous positions of middle beads
    prev_positions = [get_middle_bead(s) for s in prev_swimmers]
    num_swimmers = len(prev_positions)
    print(f"  Loaded {num_swimmers} swimmers.")

    # 4. Iterate through subsequent frames and calculate STEP-WISE RMS
    times = []
    rms_values = []
    
    # Start from start_frame + 1
    for i in range(start_frame_idx + 1, len(sorted_files)):
        fname = sorted_files[i]
        t_current = i * DT_FRAME
        
        curr_swimmers = read_frame_file(fname)
        if not curr_swimmers or len(curr_swimmers) != num_swimmers:
            continue
            
        curr_positions = [get_middle_bead(s) for s in curr_swimmers]
        
        # Calculate Squared Step Displacements
        # dr = r(t) - r(t-1)
        sq_displacements = []
        for j in range(num_swimmers):
            dx = curr_positions[j][0] - prev_positions[j][0]
            dy = curr_positions[j][1] - prev_positions[j][1]
            sq_displacements.append(dx*dx + dy*dy)
            
        # RMS of the step displacements
        msd = np.mean(sq_displacements)
        rms = np.sqrt(msd)
        
        times.append(t_current)
        rms_values.append(rms)
        
        # Update previous positions for next step
        prev_positions = curr_positions

    # 5. Smoothing
    # Simple Moving Average
    window_size = 10
    if len(rms_values) >= window_size:
        window = np.ones(int(window_size))/float(window_size)
        rms_smooth = np.convolve(rms_values, window, 'same')
        rms_smooth = np.convolve(rms_values, window, 'valid')
        times_smooth = times[window_size//2 : -window_size//2 + 1]
        
        # Adjust trimming if shapes don't match exactly due to parity
        if len(times_smooth) != len(rms_smooth):
             diff = len(times_smooth) - len(rms_smooth)
             times_smooth = times_smooth[:len(rms_smooth)]
    else:
        rms_smooth = rms_values
        times_smooth = times

    # Plot 1: Raw
    plt.figure(figsize=(10, 6))
    plt.plot(times, rms_values, 'b.-', linewidth=1, label='Raw Data')
    plt.xlabel('Time (s)', fontsize=12)
    plt.ylabel('RMS Disp. ($a_0$)', fontsize=12)
    plt.title(f'Raw RMS Displacement (N={num_swimmers})', fontsize=14)
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.legend()
    plt.savefig("rms_raw.png", dpi=300)
    print("Saved rms_raw.png")
    plt.close()

    # Plot 2: Combined
    plt.figure(figsize=(10, 6))
    plt.plot(times, rms_values, 'b-', linewidth=0.5, alpha=0.4, label='Raw Data')
    plt.plot(times_smooth, rms_smooth, 'r-', linewidth=2, label='Smoothed')
    plt.xlabel('Time (s)', fontsize=12)
    plt.ylabel('RMS Disp. ($a_0$)', fontsize=12)
    plt.title('Raw + Smoothed', fontsize=14)
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.legend()
    plt.savefig("rms_combined.png", dpi=300)
    print("Saved rms_combined.png")
    plt.close()

    # Plot 3: Smooth
    plt.figure(figsize=(10, 6))
    plt.plot(times_smooth, rms_smooth, 'r-', linewidth=2, label='Smoothed')
    plt.xlabel('Time (s)', fontsize=12)
    plt.ylabel('RMS Disp. ($a_0$)', fontsize=12)
    plt.title('Smoothed Only', fontsize=14)
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.legend()
    plt.savefig("rms_smooth.png", dpi=300)
    print("Saved rms_smooth.png")
    plt.close()

if __name__ == "__main__":
    main()
