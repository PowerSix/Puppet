class role::choco_module_puppet {
  include chocolatey
  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }
}
