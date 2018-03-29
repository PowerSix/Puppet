class profile::choco_firefox {
  exec { 'choco_firefox':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install firefox -y)',
    unless    => '$(Test-Path -Path "C:\\Program Files\\Mozilla Firefox\\firefox.exe")',
    provider  => powershell,
    logoutput => true,
  }
}
