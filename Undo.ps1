# Services
## PcaSvc
Start-Service PcaSvc
## Eventviewer
Start-Service EventLog
## Task Scheduler
Start-Service Schedule
## Sysmain
Start-Service Sysmain
## BAM
Start-Service BAM
## DPS
Start-Service DPS
## Searchindexer
Start-Service WSearch
## DCOMLaunch
Start-Service DCOMLAUNCH
## Plug and Play
Start-Service PlugPlay
## CDPSvc
Start-Service CDPSvc
## Appinfo
Start-Service Appinfo
## Dusmsvc
Start-Service Dusmsvc

# USNJournal
"C:", "D:" | ForEach-Object {
    fsutil usn createjournal m=33554432 a=8388608 $_
}

# Command Prompt Toggle
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\System" -Name "DisableCMD" -Value 0 -PropertyType DWORD -Force

# PowerShell Logging
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally

# End part
Write-Host "Tasks are finished... Reviewing with Service Checker..." -ForegroundColor Green
powershell -ExecutionPolicy Bypass -Command "iwr https://raw.githubusercontent.com/NameLessF0/Service-Checker/refs/heads/main/Service-Checker.ps1 | iex"
