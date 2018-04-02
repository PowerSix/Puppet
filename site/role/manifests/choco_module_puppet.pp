class role::choco_module_puppet {
  include chocolatey
  $packages = ['notepadplusplus', '7zip', 'awscli', 'pandoc']
  package { $packages:
    ensure   => installed,
    provider => 'chocolatey',
  }
}
