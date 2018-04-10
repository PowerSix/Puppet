class role::tomcat {

include profile::choco
package { 'jdk8':
  ensure   => 'latest',
  provider => 'chocolatey',

}->

package { 'tomcat':
  ensure   => '8.5.12',
  provider => 'chocolatey',
  }->

  file {'C:/Program Files/Apache Software Foundation/tomcat/apache-tomcat-8.5.12/bin/setenv.bat':
	ensure	=> 'present',
	source	=> 'puppet:///extra_files/profile/files/setenv.bat',
	}->

  registry_value { 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Apache Software Foundation\Procrun 2.0\Tomcat8\Parameters\Java\Options':
  ensure     => present,
  type       => string,
  data       => "-Dcatalina.home=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\n
				 -Dcatalina.base=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\n
				 -Djava.io.tmpdir=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\\temp\n
				 -Djava.util.logging.manager=org.apache.juli.ClassLoaderLogManager\n
				 -Djava.util.logging.config.file=C:\\Program Files\\Apache Software Foundation\\tomcat\\apache-tomcat-8.5.12\\conf\\logging.properties\n
				 -XX:MaxPermSize=256m",
}

}
