class role::windows_application_server {
  include profile::windows_defaults
  include profile::disable_uac
  include chocolatey

  # include profile::windows_application_defaults

  package { 'notepadplusplus':
    ensure   => latest,
    provider => 'chocolatey',
  }

  package { 'firefox':
    ensure   => latest,
    provider => 'chocolatey',
  }

  package { 'awscli':
    ensure   => latest,
    provider => 'chocolatey',
  }

  $pp_role = @("CONTENT")
    Windows application server.
    | CONTENT

  file { 'C:\\Users\\Administrator\\Desktop\\PuppetRole.txt':
    ensure  => 'present',
    content => $pp_role,
  }
}
