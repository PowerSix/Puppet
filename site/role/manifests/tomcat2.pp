class role::tomcat2 {
  exec { 'install_choco':
    command  => '$(Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')))',
    provider => powershell,
  } ->

  exec { 'choco_jdk8':
    command  => '$(choco install jdk8 -y',
    provider => powershell,
  } ->

  exec { 'choco_tomcat':
    command  => '$(choco install tomcat -y',
    provider => powershell,
  }
}
