# Basic system checks for learning and troubleshooting
# Run only in an authorised environment.

Write-Host "Computer Name:" $env:COMPUTERNAME
Write-Host "Current User:" $env:USERNAME

Write-Host "`nOperating System:"
Get-CimInstance Win32_OperatingSystem |
    Select-Object Caption, Version, LastBootUpTime

Write-Host "`nIP Configuration:"
Get-NetIPConfiguration |
    Select-Object InterfaceAlias, IPv4Address, IPv4DefaultGateway

Write-Host "`nDisk Space:"
Get-PSDrive -PSProvider FileSystem |
    Select-Object Name, Used, Free

Write-Host "`nStopped Automatic Services:"
Get-Service |
    Where-Object { $_.StartType -eq "Automatic" -and $_.Status -ne "Running" } |
    Select-Object Name, DisplayName, Status
