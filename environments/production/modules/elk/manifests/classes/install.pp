class elk::classes::install {


  $elk_packages = [
    'jdk',
    'elasticsearch',
    'kibana',
    'epel-release',
    'nginx',
    'httpd-tools',
    'logstash'
  ]

  package { $elk_packages :
    ensure => latest,
  }


}
