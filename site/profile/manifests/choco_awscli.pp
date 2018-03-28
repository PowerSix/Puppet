class profile::choco_awscli {
  exec { 'choco_awscli':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install awscli -y)',
    provider  => powershell,
    logoutput => true,
  }
}
