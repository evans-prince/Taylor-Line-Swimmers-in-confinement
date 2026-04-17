# Quick test: use 'index' instead of 'every' for double-blank-line separators
set term dumb 80 25
filename = "src/cpp/results/results_b0.150_nu0.001_v0.500_N200_R75_nuBath1.000/data/file0.txt"

# Test: plot only swimmer 0 using index
stats filename index 0 using 1:2 nooutput
print "Points in index 0 = ", STATS_records

# Plot just first swimmer (should be a localized line, not full area)
plot filename index 0 using 1:2 with linespoints notitle
