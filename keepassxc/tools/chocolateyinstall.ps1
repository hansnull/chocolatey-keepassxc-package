
$ErrorActionPreference = 'Stop';

$packageName= 'keepassxc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/keepassxreboot/keepassxc/releases/download/2.1.1/KeePassXC-2.1.1-Win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'KeePassXC'

  checksum64    = 'ca7b5c644335605c9cd3eb8fe60aa528'
  checksumType64= 'md5'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs


















