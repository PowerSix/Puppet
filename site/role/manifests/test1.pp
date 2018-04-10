class role::test1 {
  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Apache Software Foundation\Procrun 2.0\Tomcat8\Parameters\Java\Options':
  ensure => present,
  type   => array,
  data   => "-Dcatalina.home=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12",
            "-Dcatalina.base=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12",
            "-Djava.io.tmpdir=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\\temp",
            "-Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager",
            "-Djava.util.logging.config.file=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\\conf\\logging.properties",
            "-XX:MaxPermSize=256m",
  }
}
