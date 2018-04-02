class role::choco_module_geoff {
  include chocolatey
  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }
}
