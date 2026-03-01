$ErrorActionPreference = 'Stop';
$packageName= 'smartsystemmenu'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/AlexanderPro/SmartSystemMenu/releases/download/v2.33.0/SmartSystemMenu_v2.33.0.zip'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'zip'
  url           = $url
  softwareName  = 'SmartSystemMenu*'
  checksum      = '859963ef19291111339801c0691538e4f8100e5851690419fe964845ae6575c9'
  checksumType  = 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
