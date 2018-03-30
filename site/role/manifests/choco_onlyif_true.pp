class role::choco_onlyif_true {
  exec { 'choco_onlyif_true':
    command   => '$(Invoke-Expression ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    onlyif    => '$(Test-Path -Path C:\\ProgramData\\chocolatey\\bin\\choco.exe)',
    provider  => powershell,
    logoutput => true,
  }
}
