class profile::website_content {
  file { 'c:\\inetpub\\minimal\\content' :
    ensure => directory,
    source  => 'puppet:///modules/profile/demo-website/',
  }
}
