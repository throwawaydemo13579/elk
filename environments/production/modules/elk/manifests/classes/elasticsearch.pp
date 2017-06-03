class elk::classes::elasticsearch { 

  package {'elasticsearch' :
    ensure => latest,
    require => Class['common::classes::configuration'],
  }


  file {'/etc/elasticsearch/elasticsearch.yml' :
    ensure => file,
    source => 'puppet:///modules/elk/etc/elasticsearch/elasticsearch.yml',
    require => Package['elasticsearch'],
  }

  file {'/usr/lib/systemd/system/elasticsearch.service' :
    ensure => file,
    source => 'puppet:///modules/elk/usr/lib/systemd/system/elasticsearch.service', 
    require => Package['elasticsearch'],
  }

  service {'elasticsearch' :
    ensure => running,
    enable => true,
    require => [
                 File['/etc/elasticsearch/elasticsearch.yml'],
                 File['/usr/lib/systemd/system/elasticsearch.service'],
               ],
  }

}

