class profile::chocolatey {
  exec { 'chocolatey':
    command   => '$(Invoke-Expression ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    # unless    => '$(Test-Path -Path C:\\ProgramData\\chocolatey\\bin\\choco.exe)',
    unless    => '$(Test-Path -Path C:\\ProgramData)',
    provider  => powershell,
    logoutput => true,
  }
}
