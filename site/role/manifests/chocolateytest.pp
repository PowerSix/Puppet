class role::chocolateytest {
  include profile::choco ->
  include profile::googlechrome ->
  include profile::firefox
}
