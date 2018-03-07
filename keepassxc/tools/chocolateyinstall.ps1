
$ErrorActionPreference = 'Stop';

$packageName= 'keepassxc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/keepassxreboot/keepassxc/releases/download/2.3.1/KeePassXC-2.3.1-Win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'KeePassXC'

  checksum64    = '2992c184c614a2e6b28fd17b682e1785504846101b34f478e4da411055296269'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs


















