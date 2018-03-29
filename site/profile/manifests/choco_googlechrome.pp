class profile::choco_googlechrome {
  exec { 'choco_googlechrome':
    command   => '$(C:\\ProgramData\\chocolatey\\bin\\choco install googlechrome -y)',
    unless    => '$(Test-Path -Path "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"")',
    provider  => powershell,
    logoutput => true,
  }
}
