class role::choco_jdk8_tomcat {
  include profile::choco ->
  include profile::choco_jdk8 ->
  include profile::choco_tomcat
}
