class role::windows_application_server {
  include profile::chocolatey
  # include chocolatey <- Broken module from Forge - PuppetLabs don't care
  include profile::choco_notepadplusplus
  include profile::choco_googlechrome
  include profile::choco_firefox
  include profile::choco_awscli

  include profile::windows_defaults
  include profile::file_desktop
  # include profile::disable_uac
  # include profile::windows_application_defaults

}
