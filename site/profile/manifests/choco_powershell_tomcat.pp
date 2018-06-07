class profile::choco_tomcat {
  exec { 'choco_tomcat':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install tomcat -y)',
    unless => 'If (Test-Path -Path "C:\\Program Files\\Apache Software Foundation\\tomcat") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
