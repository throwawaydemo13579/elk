class elk::classes::kibana { 

  package {'kibana' :
    ensure => latest,
    require => Class['common::classes::configuration'],
  }

  file {'/etc/nginx/conf.d/kibana.conf' :
    ensure => file,
    source => 'puppet:///modules/elk/etc/nginx/conf.d/kibana.conf',
    require => Class['elk::classes::install'],
  }

  file {'/etc/kibana/kibana.yml' :
   ensure => file,
   source => 'puppet:///modules/elk/etc/kibana/kibana.yml',
   require => Package['kibana'],
  }

  service {'kibana' :
    ensure => running,
    enable => true,
    require => File['/etc/kibana/kibana.yml'],
  }

  service {'nginx' :
    ensure => running,
    enable => true,
    require => File['/etc/nginx/conf.d/kibana.conf'],
  }


}

