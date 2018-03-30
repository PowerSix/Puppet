class profile::choco_notepadplusplus {
  exec { 'choco_notepadplusplus':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install notepadplusplus -y)',
    unless => 'If (Test-Path -Path "C:\\Program Files\\Notepad++\\notepad++.exe") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
