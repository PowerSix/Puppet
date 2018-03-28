class profile::choco {
  exec { 'choco':
    # command   => '$(iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\\ProgramData\\chocolatey\\bin", [EnvironmentVariableTarget]::Process); Exit 0)',
    command   => '$(iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    provider  => powershell,
    logoutput => true,
  }
}
