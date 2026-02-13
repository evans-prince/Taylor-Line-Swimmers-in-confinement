import matplotlib.pyplot as plt
import numpy as np
import os
import re
import glob

# Config
DATA_DIR = "COMdata"
N_BEADS = 100 
DT_FRAME = 0.5 
OFFSET_TIME = 50.0 

def read_frame_file(filepath):
    swimmers = []
    try:
        with open(filepath, 'r') as f:
            for line in f:
                parts = line.split()
                if len(parts) >= 2:
                    swimmers.append((float(parts[0]), float(parts[1])))
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
        return None
    return swimmers

def get_center_of_mass(swimmer):
    return swimmer

def main():
    files = glob.glob(os.path.join(DATA_DIR, "file*.txt"))
    if not files:
        return

    def get_frame_num(fname):
        match = re.search(r'file(\d+)\.txt', os.path.basename(fname))
        return int(match.group(1)) if match else -1

    sorted_files = sorted(files, key=get_frame_num)
    target_frame_idx = int(round(OFFSET_TIME / DT_FRAME))
    if target_frame_idx >= len(sorted_files):
        return

    ref_file = sorted_files[target_frame_idx]
    ref_coms = read_frame_file(ref_file)
    if not ref_coms:
        return
    num_swimmers = len(ref_coms)

    times = []
    rms_distances = []
    
    for i in range(target_frame_idx + 1, len(sorted_files)):
        fname = sorted_files[i]
        swimmers = read_frame_file(fname)
        if not swimmers or len(swimmers) != num_swimmers:
            continue
            
        current_coms = swimmers
        sq_displacements = []
        for j in range(num_swimmers):
            dx = current_coms[j][0] - ref_coms[j][0]
            dy = current_coms[j][1] - ref_coms[j][1]
            sq_displacements.append(dx*dx + dy*dy)
            
        rms = np.sqrt(np.mean(sq_displacements))
        times.append(i * DT_FRAME - OFFSET_TIME)
        rms_distances.append(rms)

    if not times:
        return

    plt.figure(figsize=(10, 6))
    plt.plot(np.log(times), np.log(rms_distances), 'b.-', linewidth=1, markersize=4, label='RMSD')
    plt.xlabel('Log ( Time (seconds) ) ')
    plt.ylabel('Log (RMS Displacement ) ($a_0$)')
    plt.title(f'RMS Displacement vs Time (Log Scale, N={num_swimmers})')
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.legend()
    plt.text(0.02, 0.95, f"a0: 1.0", transform=plt.gca().transAxes, 
             fontsize=10, verticalalignment='top', bbox=dict(boxstyle='round', facecolor='white', alpha=0.8))

    plt.savefig("rms_plot_from_data.png", dpi=300)
    print("Saved rms_plot_from_data.png using COMdata")

if __name__ == "__main__":
    main()
