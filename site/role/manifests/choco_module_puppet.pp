class role::choco_module_puppet {
  include chocolatey
  $package = ['notepadplusplus', '7zip', 'awscli', 'pandoc']
  package { $package:
    ensure   => installed,
    provider => 'chocolatey',
  }
}
