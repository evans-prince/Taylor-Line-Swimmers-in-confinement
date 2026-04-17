# ==============================
# Compile C++ code
# ==============================
Write-Host "Compiling C++ code..."

# Get the workspace root (parent of scripts folder)
$workspaceRoot = Split-Path $PSScriptRoot -Parent
$cppDir = Join-Path $workspaceRoot "src\cpp"
$exePath = Join-Path $cppDir "sim_executable.exe"

# Change to C++ directory and compile
Push-Location $cppDir
g++ main.cpp -std=c++17 -O3 -o sim_executable.exe
$buildSuccess = $LASTEXITCODE -eq 0
Pop-Location

if (!$buildSuccess) {
    Write-Host "Compilation failed! Exiting."
    exit 1
}

# Ensure executable exists
if (!(Test-Path $exePath)) {
    Write-Host "Executable not found! Check g++ installation."
    exit 1
}

# ==============================
# Parameters
# ==============================
$B_VALS = @(0.1)
$NU_VALS = @(0.005)
$V_VALS = @(1.0)
$TARGET_R_VALS = @(75, 60, 50)
$NU_BATH_VALS = @(0.01, 0.1)

# ==============================
# Output folder (SAFE LOCATION)
# ==============================
$workspaceRoot = Split-Path $PSScriptRoot -Parent
$cppDir = Join-Path $workspaceRoot "src\cpp"
$outDir = Join-Path $cppDir "outputs"
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
            foreach ($r in $TARGET_R_VALS) {
                foreach ($nu_bath in $NU_BATH_VALS) {

                    $outputFile = Join-Path $outDir "output_$jobId.txt"

                    $job = Start-Job -ScriptBlock {
                        param($exe, $b, $nu, $v, $r, $nu_bath, $workDir)

                        # Set correct working directory
                        Set-Location $workDir

                        Write-Host "Running: $b $nu $v $r $nu_bath"

                        & $exe $b $nu $v $r $nu_bath

                    } -ArgumentList $exePath, $b, $nu, $v, $r, $nu_bath, $cppDir

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
}

# ==============================
# Wait for completion
# ==============================
$jobList | Wait-Job | Out-Null
$jobList | Receive-Job | Out-Null
$jobList | Remove-Job

Write-Host "======================================"
Write-Host "All simulations completed successfully!"