class role::iis_webserver {
  #include profile::mps_host
  #include profile::website_content
  host { 'www.six.com':
    ip => '52.49.69.27',
  }

  $iisfeatures = ['Web-WebServer','Web-Scripting-Tools','Web-Mgmt-Console']

  iis_feature { $iisfeatures:
    ensure => 'present',
  } ->

  iis_site { 'minimal':
    ensure          => 'started',
    physicalpath    => 'c:\\inetpub\\minimal',
    applicationpool => 'DefaultAppPool',
    require         => File['minimal'],
    bindings        => [
      {
        'bindinginformation' => '*:8080:',
        'protocol'           => 'http',
      },
    ],
  }

  file { 'minimal':
    ensure => 'directory',
    path   => 'c:\\inetpub\\minimal',
  }

  $content = "Hello, World!\n\n\nIIS 10.0 or whatever ;-)"

  file { 'c:\\inetpub\\minimal\\index.htm':
    ensure  => 'present',
    content => $content,
  }

  file { 'C:\\inetpub\\wwwroot\\index.htm':
    ensure  => 'present',
    content => "Test content",
  }
}
