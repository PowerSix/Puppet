class role::iis_webserver {
  #include profile::mps_host
  #include profile::website_content
  host { 'www.six.com':
    ip => '52.49.69.27',
  }

  $iisfeatures = ['Web-WebServer','Web-Scripting-Tools']

  iis_feature { $iisfeatures:
    ensure => 'present',
  } ->

  iis_site { 'minimal':
    ensure          => 'started',
    physicalpath    => 'c:\\inetpub\\minimal',
    applicationpool => 'DefaultAppPool',
    require         => File['minimal'],
  }

  file { 'minimal':
    ensure => 'directory',
    path   => 'c:\\inetpub\\minimal',
  }

  $content = "Hello, World!

    IIS 7.5 or whatever ;-)
    "

  file { 'c:\\inetpub\\minimal\\index.html':
    ensure  => 'present',
    content => $content,
  }
}
