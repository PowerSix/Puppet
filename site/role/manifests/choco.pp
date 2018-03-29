class role::choco {
  exec { 'install_choco':
    command   => '$(iex ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    provider  => powershell,
    logoutput => true,
    unless    => '$(Test-Path -Path C:\\ProgramData\\chocolatey\\bin\\choco.exe)',
  }
}
