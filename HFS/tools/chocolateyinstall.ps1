$packageName= 'hfs'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.melauto.it/hfs/hfs.exe'
$hfsPath = Join-Path $toolsDir 'hfs.exe'
Get-ChocolateyWebFile $packageName $hfsPath $url
