class role::windows_database_server {
  include profile::windows_defaults
  # include profile::windows_database_defaults

  $dbfeatures = ['Windows-Internal-Database']

  windowsfeature { $dbfeatures:
    ensure => present,
  }

  $pp_role = @("CONTENT")
    Windows database server.
    | CONTENT

  file { 'C:\\Users\\Administrator\\Desktop\\PuppetRole.txt':
    ensure  => 'present',
    content => $pp_role,
  }
}
