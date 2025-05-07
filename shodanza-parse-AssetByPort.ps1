$scanFile = $args[0]
$portFile = $args[1]
$resultFile = $args[2]
$resultExtension = "-shodanza-openPorts.txt"
$resultPortExtension = "-port-"
$resultIPExtension = "-iplist"
$ports = Get-Content -Encoding UTF8 $portFile
Write-Host -ForegroundColor Red "Parsing asset data by open port..."
foreach ($port in $ports){get-content $scanFile | ConvertFrom-Json | Where-Object -Property port -EQ $port | Sort-Object -Property data | Format-Table -Property ip_str,port,data -Wrap -AutoSize | Out-File $resultFile$resultPortExtension$port$resultExtension utf8 -Force -Verbose }
foreach ($port in $ports){get-content $scanFile | ConvertFrom-Json | Where-Object -Property port -EQ $port | Sort-Object -Property data | Format-Table -Property ip_str -HideTableHeaders -Wrap -AutoSize | Out-File $resultFile$resultPortExtension$port$resultIPExtension$resultExtension utf8 -Force -Verbose }
Write-Host -ForegroundColor Red "Completed!"
# Created by Gabriel H. @weekndr_sec
# https://github.com/ndr-repo | http://weekndr.me
