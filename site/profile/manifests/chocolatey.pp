class profile::choco {
  exec { 'choco':
    # [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\\ProgramData\\chocolatey\\bin"
    command   => '$(Invoke-Expression ((New-Object System.Net.WebClient).DownloadString(\'https://chocolatey.org/install.ps1\')); Exit 0)',
    unless    => '$(Test-Path -Path C:\\ProgramData\\chocolatey\\bin\\choco.exe)',
    provider  => powershell,
    logoutput => true,
  }
}
