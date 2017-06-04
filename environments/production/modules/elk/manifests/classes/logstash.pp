class elk::classes::logstash { 

  package {'logstash' :
    ensure => latest,
    require => Class['common::classes::configuration'],
  }

  file {'/etc/logstash/conf.d/nginx_to_elasticsearch.conf' :
    ensure => file,
    source => 'puppet:///modules/elk/etc/logstash/conf.d/nginx_to_elasticsearch.conf',
  }

}

