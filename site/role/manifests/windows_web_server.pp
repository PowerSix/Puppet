class role::windows_web_server {
  include profile::windows_defaults
  include profile::website_content
  # include profile::windows_web_defaults

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

  $content = @("CONTENT")
    Hello, World!

    Powered by IIS 10.0...
    | CONTENT

  file { 'c:\\inetpub\\minimal\\index.htm':
    ensure  => 'present',
    content => $content,
  }

  file { 'C:\\inetpub\\wwwroot\\index.htm':
    ensure  => 'present',
    content => "Test content",
  }

  $pp_role = @("CONTENT")
    Windows web server.
    | CONTENT

  file { 'C:\\Users\\Administrator\\Desktop\\PuppetRole.txt':
    ensure  => 'present',
    content => $pp_role,
  }
}
