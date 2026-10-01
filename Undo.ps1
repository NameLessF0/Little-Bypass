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
New-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\System" -Name "DisableCMD" -Value 0 -PropertyType DWORD -Force

# PowerShell Logging
Set-PSReadLineOption -HistorySaveStyle SaveIncrementally
