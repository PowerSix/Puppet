class profile::choco_firefox {
  exec { 'choco_firefox':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install firefox -y)',
    unless    => 'If (Test-Path -Path "C:\\Program Files\\Mozilla Firefox\\firefox.exe") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
