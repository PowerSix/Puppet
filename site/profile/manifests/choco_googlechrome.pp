class profile::choco_googlechrome {
  exec { 'choco_googlechrome':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install googlechrome -y)',
    provider  => powershell,
    logoutput => true,
  }
}
