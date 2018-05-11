class profile::install_msi {
  package { 'newrelic-infra':
    ensure          => 'installed',
    provider        => 'windows',
    source          => 'http://download.newrelic.com/infrastructure_agent/windows/newrelic-infra.1.0.703.msi',
    install_options => ['/quiet'],
  }
}
