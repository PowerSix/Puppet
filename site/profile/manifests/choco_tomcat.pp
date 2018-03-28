class profile::choco_tomcat {
  exec { 'choco_tomcat':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install tomcat -y)',
    provider  => powershell,
    logoutput => true,
  }
}
