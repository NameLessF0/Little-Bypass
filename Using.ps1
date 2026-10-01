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
Write-Host "Little Bypass" -ForegroundColor Magenta
Write-Host "Want to:" ForegroundColor DarkMagenta
Write-Host "[1] Turn on the bypass." -ForegroundColor Red
Write-Host "[2] Turn off the bypass." -ForegroundColor Red

while ($true) {
    $input = Read-Host ">"

    if ($input -eq "1") {
        Write-Host "Turning on the bypass..." -ForegroundColor Green
    }
    elseif ($input -eq "2") {
        Write-Host "Turning off the bypass..." -ForegroundColor Yellow
    }
    else {
        Write-Host "Invalid input. Please enter 1 or 2." -ForegroundColor Red
    }
}
