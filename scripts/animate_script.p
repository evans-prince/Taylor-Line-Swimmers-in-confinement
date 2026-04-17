# Usage: gnuplot -c animate_script.p <result_folder> [max_frames] [num_swimmers]
if (ARGC < 1) {
    print "Usage: gnuplot -c animate_script.p <result_folder> [max_frames] [num_swimmers]"
    exit 1
}

result_folder = ARGV[1]
data_folder = result_folder . "/data"
output_file = result_folder . "/animation.gif"
max_frames = 800
if (ARGC >= 2) {
    max_frames = int(ARGV[2])
}

# Number of swimmers (default 200, matching main.cpp)
num_swimmers = 200
if (ARGC >= 3) {
    num_swimmers = int(ARGV[3])
}
half = num_swimmers / 2
last_first_group = half - 1
last_second_group = num_swimmers - 1

set term gif animate delay 5 size 800,800
set output output_file
set key off
set border 3
set size ratio 1
set grid
set title sprintf("Taylor Line Swarm: %s", result_folder)

# Two styles for the two velocity groups
# Group 1 (index 0 to half-1): +V0  → Blue
# Group 2 (index half to N-1):  -V0  → Red
set style line 1 lc rgb "blue" pt 7 ps 0.4 lw 1
set style line 2 lc rgb "red"  pt 7 ps 0.4 lw 1

# Iterate through saved frames and animate existing files
do for [i=0:max_frames] {
    filename = data_folder . "/file" . i . ".txt"
    exists_cmd = sprintf("cmd /c if exist \"%s\" (echo 1) else (echo 0)", filename)
    exists = real(system(exists_cmd))

    if (exists > 0) {
        r_cmd = sprintf("powershell -NoProfile -Command \"& { $x = Get-Content -Path '%s' -TotalCount 1; ($x -split ' ')[2] }\"", filename)
        current_R = real(system(r_cmd))
        box_size = current_R + 15
        set xrange [-box_size:box_size]
        set yrange [-box_size:box_size]
        set object 1 circle at 0,0 size current_R fs empty border lc rgb "black" lw 2
        plot filename using 1:2 every :::0::last_first_group with linespoints ls 1 notitle, \
             filename using 1:2 every :::half::last_second_group with linespoints ls 2 notitle
    }
}

