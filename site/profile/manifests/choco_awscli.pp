class profile::choco_awscli {
  exec { 'choco_awscli':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install awscli -y)',
    unless    => '$(Test-Path -Path "C:\\Program Files\\Amazon\\AWSCLI\\aws.exe")',
    provider  => powershell,
    logoutput => true,
  }
}
