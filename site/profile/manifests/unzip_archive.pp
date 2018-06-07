class profile::unzip_archive {
  archive { 'C:\\Program\ Files\\QAS.zip':
    source       => 'https://s3-us-west-2.amazonaws.com/opsworks-installs/QAS.zip',
    extract      => true,
    extract_path => "C:\\Program Files\\",
    creates      => "C:\\Program Files\\QAS",
  }
}
