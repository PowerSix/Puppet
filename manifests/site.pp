File { backup => false }

# DEFAULT NODE
# Node definitions in this file are merged with node data from the console.
# See http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on node definitions.

node default {
  # This allows us to auto include a role called role::$pp_role tag
  # NOTE: This will cause a catalog to fail to compile if role::pp_role doesn't exist
  if $trusted['extensions']['pp_role'] != undef {
    include "role::${trusted['extensions']['pp_role']}"
  }
}
