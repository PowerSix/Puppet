class profile::choco_googlechrome {
  exec { 'choco_googlechrome':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install googlechrome -y)',
    unless    => 'If (Test-Path -Path "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe") {exit 0} else {exit 1}',
    provider  => powershell,
    logoutput => true,
  }
}
