class role::choco_module_puppet {
  include chocolatey
  $packages = ['7zip', 'awscli', 'firefox', 'googlechrome', 'notepadplusplus', 'sysinternals', 'tightvnc', 'treesizefree', 'visualstudiocode']
  package { $packages:
    ensure   => installed,
    provider => 'chocolatey',
  }
}
