$packageName= 'MsgViewer'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://internode.dl.sourceforge.net/project/msgviewer/MSGViewer-1.9/MSGViewerSetup-1.9.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe' #only one of these: exe, msi, msu
  url           = $url
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
  validExitCodes= @(0, 3010, 1641)
  softwareName  = 'MsgViewer*'
  checksum      = 'd5a87b1e3559df91cdc56f26375800d0'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs
