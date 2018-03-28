class profile::choco_jdk8 {
  exec { 'choco_jdk8':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install jdk8 -y)',
    provider  => powershell,
    logoutput => true,
  }
}
