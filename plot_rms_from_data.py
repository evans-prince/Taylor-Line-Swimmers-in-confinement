import matplotlib.pyplot as plt
import numpy as np
import os
import re
import glob

# Config
DATA_DIR = "data"
N_BEADS = 100 
DT_FRAME = 0.5 
OFFSET_TIME = 50.0 

def read_frame_file(filepath):
    swimmers = []
    current_swimmer = []
    try:
        with open(filepath, 'r') as f:
            lines = f.readlines()
        for line in lines:
            parts = line.split()
            if len(parts) == 2:
                x, y = float(parts[0]), float(parts[1])
                current_swimmer.append((x, y))
            elif not parts and current_swimmer:
                if len(current_swimmer) > 0:
                    swimmers.append(current_swimmer)
                    current_swimmer = []
        if current_swimmer:
            swimmers.append(current_swimmer)
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
        return None
    return swimmers

def get_center_of_mass(swimmer):
    xs = [b[0] for b in swimmer]
    ys = [b[1] for b in swimmer]
    return np.mean(xs), np.mean(ys)

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
    ref_swimmers = read_frame_file(ref_file)
    if not ref_swimmers:
        return
    
    ref_coms = [get_center_of_mass(s) for s in ref_swimmers]
    num_swimmers = len(ref_coms)

    times = []
    rms_distances = []
    
    for i in range(target_frame_idx, len(sorted_files)):
        fname = sorted_files[i]
        swimmers = read_frame_file(fname)
        if not swimmers or len(swimmers) != num_swimmers:
            continue
            
        current_coms = [get_center_of_mass(s) for s in swimmers]
        sq_displacements = []
        for j in range(num_swimmers):
            dx = current_coms[j][0] - ref_coms[j][0]
            dy = current_coms[j][1] - ref_coms[j][1]
            sq_displacements.append(dx*dx + dy*dy)
            
        rms = np.sqrt(np.mean(sq_displacements))
        times.append(i * DT_FRAME - OFFSET_TIME)
        rms_distances.append(rms)

    plt.figure(figsize=(10, 6))
    plt.plot(times, rms_distances, 'b.-', linewidth=1, markersize=4, label='RMSD')
    plt.xlabel('Time (seconds)')
    plt.ylabel('RMS Displacement ($a_0$)')
    plt.title(f'RMS Displacement (N={num_swimmers})')
    plt.grid(True, linestyle='--', alpha=0.7)
    plt.legend()
    plt.text(0.02, 0.95, f"a0: 1.0", transform=plt.gca().transAxes, 
             fontsize=10, verticalalignment='top', bbox=dict(boxstyle='round', facecolor='white', alpha=0.8))

    plt.savefig("rms_plot_from_data.png", dpi=300)
    plt.show()

if __name__ == "__main__":
    main()
