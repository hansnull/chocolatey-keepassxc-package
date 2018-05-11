
$ErrorActionPreference = 'Stop';

$packageName= 'keepassxc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/keepassxreboot/keepassxc/releases/download/2.3.3/KeePassXC-2.3.3-Win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'KeePassXC'

  checksum64    = '37069ae25f32e59f8a99eef414275688fff610f23d2d13ad4c161c666761d2ff'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs


















