class role::registry_value {

  service { 'plugplay':
    ensure => running,
    enable => true,
  } ->

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Test\JvmMs':
    ensure => present,
    type   => dword,
    data   => "256",
    notify => Service['plugplay'],
  }

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Test\Options':
  ensure => present,
  type   => array,
  data   => "-Dcatalina.home=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\r\n
-Dcatalina.base=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\r\n
-Djava.io.tmpdir=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\\temp\r\n
-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager\r\n
-Djava.util.logging.config.file=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\\conf\\logging.properties\r\n
-XX:MaxPermSize=256m",
  }
}
