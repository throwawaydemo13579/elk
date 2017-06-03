class elk::classes::elasticsearch { 

  file {'/etc/elasticsearch/elasticsearch.yml' :
    ensure => file,
    source => 'puppet:///modules/elk/etc/elasticsearch/elasticsearch.yml',
    require => Class['elk::classes::install'],
  }

  file {'/usr/lib/systemd/system/elasticsearch.service' :
    ensure => file,
    source => 'puppet:///modules/elk/usr/lib/systemd/system/elasticsearch.service', 
    require => Class['elk::classes::install'],
  }

}
