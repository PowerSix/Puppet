class profile::host_mps {
  host { 'www.six.com':
    ip => '52.49.69.27',
  }
  host { 'www.google.com':
    ip => '127.0.0.1',
  }
}
