$scanFile = $args[0]
$resultFile = $args[1]
$resultExtension = "-shodanza.txt"
$resultIPExtension = "-IP"
$resultHostExtension = "-hostname"
$resultPortExtension = "-port"
$resultProductExtension = "-product"
$resultPlatformExtension = "-platform"
get-content $scanFile -Encoding UTF8 | ConvertFrom-Json | Select-Object -ExpandProperty ip_str -ErrorAction Ignore  | Sort-Object -Unique | Out-File $resultFile$resultIPExtension$resultExtension utf8 -Verbose -Force
get-content $scanFile -Encoding UTF8 | ConvertFrom-Json | Select-Object -ExpandProperty hostnames -ErrorAction Ignore  | Sort-Object -Unique |  Out-File $resultFile$resultHostExtension$resultExtension utf8 -Verbose -Force 
get-content $scanFile -Encoding UTF8 | ConvertFrom-Json | Select-Object -ExpandProperty port -ErrorAction Ignore  | Sort-Object -Unique |  Out-File $resultFile$resultPortExtension$resultExtension utf8 -Verbose -Force 
get-content $scanFile -Encoding UTF8 | ConvertFrom-Json | Select-Object -ExpandProperty product -ErrorAction Ignore  | Sort-Object -Unique |  Out-File $resultFile$resultProductExtension$resultExtension utf8 -Verbose -Force
get-content $scanFile -Encoding UTF8 | ConvertFrom-Json | Select-Object -ExpandProperty cpe23 -ErrorAction Ignore  | Sort-Object -Unique |  Out-File $resultFile$resultPlatformExtension$resultExtension utf8 -Verbose -Force 
Write-Host -ForegroundColor Red "Indicator parsing from dataset completed!"
# Created by Gabriel H. @weekndr_sec
# https://github.com/ndr-repo | http://weekndr.me
