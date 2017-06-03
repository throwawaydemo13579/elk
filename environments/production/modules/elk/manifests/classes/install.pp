class elk::classes::install {


  $elk_packages = [
    'jdk',
    'nginx-release-centos',
    'httpd-tools',
  ]

  package { $elk_packages :
    ensure => latest,
    require => Class['common::classes::configuration'],
  }

  package { 'nginx' :
    ensure => latest,
    require => Package[$elk_packages],
  }


}
