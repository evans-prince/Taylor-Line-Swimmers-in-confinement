# ==============================
# Compile C++ code
# ==============================
Write-Host "Compiling C++ code..."

g++ main.cpp -std=c++17 -O3 -o sim_executable.exe   

if ($LASTEXITCODE -ne 0) {
    Write-Host "Compilation failed! Exiting."
    exit 1
}

# Ensure executable exists
$exePath = Join-Path $PSScriptRoot "sim_executable.exe"

if (!(Test-Path $exePath)) {
    Write-Host "Executable not found! Check g++ installation."
    exit 1
}

# ==============================
# Parameters
# ==============================
$B_VALS = @(0.1, 0.2)
$NU_VALS = @(0.001, 0.005)
$V_VALS = @(0.1, 0.2)
$R_VALS = @(200, 150)

# ==============================
# Output folder (SAFE LOCATION)
# ==============================
$outDir = Join-Path $PSScriptRoot "outputs"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

# ==============================
# CPU cores
# ==============================
$CORES = (Get-CimInstance Win32_ComputerSystem).NumberOfLogicalProcessors
$JOBS = if ($CORES -gt 2) { $CORES - 1 } else { 1 }

Write-Host "======================================"
Write-Host "Found $CORES CPU cores. Running $JOBS parallel jobs."
Write-Host "======================================"

# ==============================
# Parallel execution
# ==============================
$jobList = @()
$jobId = 0

foreach ($b in $B_VALS) {
    foreach ($nu in $NU_VALS) {
        foreach ($v in $V_VALS) {
            foreach ($r in $R_VALS) {

                $outputFile = Join-Path $outDir "output_$jobId.txt"

                # $job = Start-Job -ScriptBlock {
                #     param($exe, $b, $nu, $v, $r, $outFile)

                #     Write-Host "Running: $b $nu $v $r"

                #     & $exe $b $nu $v $r |
                #     Out-File -FilePath $outFile

                # } -ArgumentList $exePath, $b, $nu, $v, $r, $outputFile
                $job = Start-Job -ScriptBlock {
                    param($exe, $b, $nu, $v, $r, $workDir)

                    # 🔥 FIX: set correct working directory
                    Set-Location $workDir

                    Write-Host "Running: $b $nu $v $r"

                    & $exe $b $nu $v $r

                } -ArgumentList $exePath, $b, $nu, $v, $r, $PSScriptRoot

                $jobList += $job
                $jobId++

                # Limit parallel jobs
                while (($jobList | Where-Object { $_.State -eq "Running" }).Count -ge $JOBS) {
                    Start-Sleep -Milliseconds 500
                }
            }
        }
    }
}

# ==============================
# Wait for completion
# ==============================
$jobList | Wait-Job | Out-Null
$jobList | Receive-Job | Out-Null
$jobList | Remove-Job

Write-Host "======================================"
Write-Host "All simulations completed successfully!"