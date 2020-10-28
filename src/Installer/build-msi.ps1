Param(
    [Parameter(Mandatory = $true)]
    [string]$version
)

Write-Host "-- Build MSI installer --"

# Download and install Wix tools
$wixToolsZipUrl = "https://github.com/wixtoolset/wix3/releases/download/wix3112rtm/wix311-binaries.zip"
$wixZip = "wix.zip"
$wixPath = "C:\Temp\wix"

Write-Host "Download Wix Tools"
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri $wixToolsZipUrl -out $wixZip

Write-Host "Install Wix Toolset"
Expand-Archive $wixZip -DestinationPath $wixPath
$env:PATH += ";$wixPath"
Remove-Item $wixZip

# Build the MSI package
Write-Host "Build the MSI package"
((Get-Content -path .\Product.wxs -Raw) -replace '0.0.0', $version) | Set-Content -Path .\Product.wxs
candle -arch x64 -v .\Product.wxs
light -out certdump.msi .\Product.wixobj
Copy-Item certdump.msi ..\..\artifacts\certdump.msi
