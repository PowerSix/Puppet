class role::tomcat {
  include chocolatey

  package { 'tomcat':
    ensure   => '8.5.12',
    provider => 'chocolatey',
    require  => Package['jdk8'],
  }

  package { 'jdk8':
    ensure   => 'latest',
    provider => 'chocolatey',
  }
}
