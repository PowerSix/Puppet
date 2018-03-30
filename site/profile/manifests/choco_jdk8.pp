class profile::choco_jdk8 {
  exec { 'choco_jdk8':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install jdk8 -y)',
    unless => 'If (Test-Path -Path "C:\\Program Files\\Java\\jdk*") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
