$packageName= 'hfs' # arbitrary name for the package, used in messages
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.melauto.it/hfs/hfs.exe' # download url
$hfsPath = Join-Path $toolsDir 'hfs.exe'
Get-ChocolateyWebFile $packageName $hfsPath $url