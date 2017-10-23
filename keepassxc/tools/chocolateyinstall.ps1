
$ErrorActionPreference = 'Stop';

$packageName= 'keepassxc'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://github.com/keepassxreboot/keepassxc/releases/download/2.2.2/KeePassXC-2.2.2-Win64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'KeePassXC'

  checksum64    = 'ee10ac73bf44ba0d2eb6159b4ad2f065a93f84af36f50a1fe4b12f9c91534211'
  checksumType64= 'sha256'

  validExitCodes= @(0, 3010, 1641)
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs


















