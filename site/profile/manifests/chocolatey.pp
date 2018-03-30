class profile::chocolatey {
  exec { 'chocolatey':
    command   => '$(Invoke-Expression ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    unless    => 'If (Test-Path -Path "C:\\ProgramData\\chocolatey\\bin\\choco.exe") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
