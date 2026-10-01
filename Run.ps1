# Start
Write-Host "Little Bypass by NameLessF0" -ForegroundColor Black
Write-Host "GitHub: https://github.com/NameLessF0" -ForegroundColor White
Write-Host "Discord: https://discord.gg/k7hcQKRXQt" -ForegroundColor Blue
Write-Host "`nRunning the script..." -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host "Little Bypass" -ForegroundColor Magenta
Write-Host " " -ForegroundColor Red
Write-Host "Want to:" -ForegroundColor Magenta
Write-Host "[1] Turn on the bypass." -ForegroundColor Red
Write-Host "[2] Turn off the bypass." -ForegroundColor Red
Write-Host " " -ForegroundColor Red
Write-Host "NOTE: CLOSE PowerShell POWERSHELL AFTER THE ACTION COMPLETES!" -ForegroundColor Red

while ($true) {
    $input = Read-Host ">"

    if ($input -eq "1") {
        Write-Host "Turning on the bypass..." -ForegroundColor Green
        powershell -ExecutionPolicy Bypass -Command "iwr https://raw.githubusercontent.com/NameLessF0/Little-Bypass/refs/heads/main/Do.ps1 | iex"
    }
    elseif ($input -eq "2") {
        Write-Host "Turning off the bypass..." -ForegroundColor Yellow
        powershell -ExecutionPolicy Bypass -Command "iwr https://raw.githubusercontent.com/NameLessF0/Little-Bypass/refs/heads/main/Undo.ps1 | iex"
    }
    else {
        Write-Host "Invalid input. Enter 1 or 2." -ForegroundColor Red
    }
}
