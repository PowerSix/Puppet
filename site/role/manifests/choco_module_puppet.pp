class role::choco_module_puppet {
  include chocolatey
  $packages = ['notepadplusplus', '7zip', 'awscli', 'pandoc', 'firefox', 'googlechrome']
  package { $packages:
    ensure   => installed,
    provider => 'chocolatey',
  }
}
