# PowerShell Logging
Set-PSReadLineOption -HistorySaveStyle SaveNothing

# Command Prompt Toggle
New-Item -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "DisableCMD" -Value 1 -PropertyType DWORD -Force | Out-Null

# Deleting USNJournal
"C:", "D:" | ForEach-Object {
    Write-Host "Deleting and disabling USN Journal on drive: $_" -ForegroundColor Cyan
    fsutil usn deletejournal /d /n $_
}

# Deleting shadow files
vssadmin delete shadows /all /quiet


# Event Logs
Get-WinEvent -ListLog * | ForEach-Object {
    try {
        [System.Diagnostics.Eventing.Reader.EventLogSession]::GlobalSession.ClearLog($_.LogName)
    } catch {}
}

# Temp
Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "C:\Windows\Temp\*" -Recurse -Force -ErrorAction SilentlyContinue

# Windows Update download cache
Stop-Service wuauserv -Force -ErrorAction SilentlyContinue
Remove-Item "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force -ErrorAction SilentlyContinue
Start-Service wuauserv -ErrorAction SilentlyContinue

# Delivery Optimization cache
Delete-DeliveryOptimizationCache -Force -ErrorAction SilentlyContinue

# Recycle Bin - C and D
Clear-RecycleBin -DriveLetter C,D -Force -ErrorAction SilentlyContinue

# Crash dumps
Remove-Item "C:\Windows\Minidump\*" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item "C:\Windows\MEMORY.DMP" -Force -ErrorAction SilentlyContinue
# Services
## PcaSvc
Stop-Service PcaSvc -Force
## Sysmain
Stop-Service Sysmain -Force
## BAM
Stop-Service BAM -Force
## DPS
Stop-Service DPS -Force
## Searchindexer
Stop-Service wsearch
## Plug and Play
Stop-Service PlugPlay -Force
## CDPSvc
Stop-Service CDPSvc -Force
## Appinfo
Stop-Service Appinfo -Force
## Dusmsvc
Stop-Service Dusmsvc -Force

## Restarting the Explorer.exe
Stop-Process -Name explorer -Force; Start-Process explorer

## End part
Write-Host "Tasks are finished... Reviewing with Service Checker..." -ForegroundColor Green
powershell -ExecutionPolicy Bypass -Command "iwr https://raw.githubusercontent.com/NameLessF0/Service-Checker/refs/heads/main/Service-Checker.ps1 | iex"
