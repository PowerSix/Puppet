class profile::windows_defaults {
  host { 'www.six.com':
    ip => '52.49.69.27',
  }
  host { 'www.google.com':
    ip => '127.0.0.1',
  }
  user { 'Six':
    ensure => present,
    comment => 'Managed by Puppet'
    groups => 'Administrators',
    password => '1stPassword',
  }
  $defaults_message = @("CONTENT")
    Windows defaults applied.
    | CONTENT

  file { 'C:\\Users\\Administrator\\Desktop\\DefaultsApplied.txt':
    ensure  => 'present',
    content => $defaults_message,
  }
}
