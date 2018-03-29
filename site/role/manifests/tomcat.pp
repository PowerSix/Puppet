class role::tomcat {
  include profile::chocolatey ->
  include profile::choco_jdk8 ->
  include profile::choco_tomcat
}
