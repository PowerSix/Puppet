class profile::choco_notepadplusplus {
  exec { 'choco_notepadplusplus':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install notepadplusplus -y)',
    unless    => '$(Test-Path -Path "C:\\Program Files\\Notepad++\\notepad++.exe")',
    provider  => powershell,
    logoutput => true,
  }
}
