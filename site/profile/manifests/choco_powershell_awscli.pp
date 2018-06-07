class profile::choco_awscli {
  exec { 'choco_awscli':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install awscli -y)',
    unless    => 'If (Test-Path -Path "C:\\Program Files\\Amazon\\AWSCLI\\aws.exe") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
