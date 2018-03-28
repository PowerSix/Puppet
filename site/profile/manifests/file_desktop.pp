class profile::file_desktop {
  $pp_role = @("CONTENT")
    Windows application server.
    | CONTENT

  file { 'C:\\Users\\Administrator\\Desktop\\PuppetRole.txt':
    ensure  => 'present',
    content => $pp_role,
  }

}
