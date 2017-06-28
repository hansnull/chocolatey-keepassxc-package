
$ErrorActionPreference = 'Stop';

$packageName= 'keepassxc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/keepassxreboot/keepassxc/releases/download/2.2.0/KeePassXC-2.2.0-Win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'KeePassXC'

  checksum64    = '49d9013a5692e264c22d7a9000d04803'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs


















