class profile::choco_7zip {
  include chocolatey
  $packages = ['7zip']
  package { $packages:
    ensure   => installed,
    provider => 'chocolatey',
  }
}
