class profile::choco_notepadplusplus {
  exec { 'choco_notepadplusplus':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install notepadplusplus -y)',
    provider  => powershell,
    logoutput => true,
  }
}
