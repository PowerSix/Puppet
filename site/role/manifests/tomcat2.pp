class role::tomcat2 {
  exec { 'install_choco':
    # command   => '$(iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\\ProgramData\\chocolatey\\bin", [EnvironmentVariableTarget]::Process); Exit 0)',
    command   => '$(iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    provider  => powershell,
    logoutput => true,
  } ->

  exec { 'choco_jdk8':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install jdk8 -y)',
    provider  => powershell,
    logoutput => true,
  } ->

  exec { 'choco_tomcat':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install tomcat -y)',
    provider  => powershell,
    logoutput => true,
  }
}
