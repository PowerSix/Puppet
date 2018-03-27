class profile::disable_uac {
  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System\EnableLUA':
    ensure => present,
    type   => dword,
    data   => "0",
  }

  exec { 'disable_uac':
    command  => '$(Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0)',
    provider => powershell,
  }
}
