class role::choco_everything {
  include profile::chocolatey
  include profile::choco_awscli
  include profile::choco_firefox
  include profile::choco_googlechrome
  include profile::choco_jdk8
  include profile::choco_notepadplusplus
  include profile::choco_tomcat
}
