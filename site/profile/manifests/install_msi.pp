class profile::install_msi {
  package { 'newrelic-infra':
    ensure          => 'installed',
    provider        => 'windows',
    source          => 'https://download.newrelic.com/infrastructure_agent/windows/newrelic-infra.msi',
    install_options => ['/quiet'],
  }
}
