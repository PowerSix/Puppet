class role::choco_unless_false {
  exec { 'choco_unless_false':
    command   => '$(Invoke-Expression ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    unless    => '$(!(Test-Path -Path C:\\ProgramData\\chocolatey\\bin\\choco.exe))',
    provider  => powershell,
    logoutput => true,
  }
}
