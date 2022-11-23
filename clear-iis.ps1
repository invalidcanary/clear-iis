### Quick and dirty log killer for 2013/2016, ask randall if you want to add anything to a certificate-signed copy
### (seriously, this is a no-frills type of thing.   No debugging, error checking, validation of directory existence, etc)

### change this line to adjust how many days of logs to keep/not purge
### example: Changing the line to read  $limit = (Get-Date).AddDays(-30) will keep 30 days of logs and purge anything older
$installPath = $env:exchangeinstallpath
$limit = (Get-Date).AddDays(-8)

### statically assigned path variables for commonly deleted log files
### feel free to add on to the end to purge other directories.
### yes, I could have done this far more eloquently with an array and a function, but so could you!

$path = "C:\inetpub\logs\LogFiles\W3SVC1"
$path2 = "C:\inetpub\logs\LogFiles\W3SVC2"
$path3 = $env:exchangeinstallpath + "Logging\Ews"
$path4 = $env:exchangeinstallpath + "Logging\MAPI Client Access"
$path5 = $env:exchangeinstallpath + "Logging\HttpProxy\Autodiscover"
$path6 = $env:exchangeinstallpath + "Logging\HttpProxy\Eas"
$path7 = $env:exchangeinstallpath + "Logging\HttpProxy\Ecp"
$path8 = $env:exchangeinstallpath + "Logging\HttpProxy\Ews"
$path9 = $env:exchangeinstallpath + "Logging\HttpProxy\Mapi"
$path10 = $env:exchangeinstallpath + "Logging\HttpProxy\Oab"
$path11 = $env:exchangeinstallpath + "Logging\HttpProxy\Owa"
$path12 = $env:exchangeinstallpath + "Logging\HttpProxy\OwaCalendar"
$path13 = $env:exchangeinstallpath + "Logging\HttpProxy\PowerShell"
$path14 = $env:exchangeinstallpath + "Logging\HttpProxy\RpcHttp"
$path15 = $env:exchangeinstallpath + "Logging\RpcHttp\W3SVC1"
$path16 = $env:exchangeinstallpath + "Logging\RpcHttp\W3SVC2"

### Delete files older than the $limit.
### if you add a new path variable to delete, add a new line (copy/paste the last one and change the path variable)
Get-ChildItem -Path $path -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path2 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path3 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path4 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path5 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path6 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path7 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path8 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path9 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path10 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path11 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path12 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path13 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path14 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path15 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
Get-ChildItem -Path $path16 -Recurse -Force | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item -Force
