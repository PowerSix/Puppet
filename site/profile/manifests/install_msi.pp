class profile::install_msi {
  package { 'newrelic-infra':
    ensure          => 'installed',
    provider        => 'windows',
    source          => 'https://dl.google.com/tag/s/dl/chrome/install/googlechromestandaloneenterprise64.msi',
    install_options => ['/quiet'],
  }
}
