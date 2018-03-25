class profile::website_content {
  file { 'c:\\inetpub\\minimal\\content':
    ensure => directory,
    recurse => remote,
    source  => 'puppet:///modules/profile/demo-website/',
  }
}
