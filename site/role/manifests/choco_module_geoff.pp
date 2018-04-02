class role::choco_module_geoff {
  include chocolatey
  $packages = ['notepadplusplus', '7zip', 'awscli', 'pandoc']
  package { $packages:
    ensure   => installed,
    provider => 'chocolatey',
  }
}
