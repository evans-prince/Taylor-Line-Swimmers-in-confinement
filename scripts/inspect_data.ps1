$file = "src\cpp\results\results_b0.150_nu0.001_v0.500_N200_R75_nuBath1.000\data\file0.txt"
$lines = Get-Content $file -TotalCount 120
for ($i = 0; $i -lt $lines.Count; $i++) {
    $line = $lines[$i]
    if ($line -match '^#' -or $line.Trim() -eq '') {
        Write-Host ("{0}: [{1}]" -f ($i+1), $line)
    }
}
