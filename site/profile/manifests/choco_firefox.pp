class profile::choco_firefox {
  exec { 'choco_firefox':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install firefox -y)',
    provider  => powershell,
    logoutput => true,
  }
}
