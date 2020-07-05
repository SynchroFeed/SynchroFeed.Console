$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName = 'SynchroFeed.Console'
    file        = gi "$toolsDir\*.zip"
    destination = $toolsDir
}

Get-ChocolateyUnzip @packageArgs
Remove-Item -force "$toolsDir\*.zip" -ea 0