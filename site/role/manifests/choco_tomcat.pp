class role::choco_tomcat {
  include profile::chocolatey ->
  # include profile::choco_jdk8 - choco installs jdk8 automatically, as a prerequisite for Tomcat
  include profile::choco_tomcat
}
