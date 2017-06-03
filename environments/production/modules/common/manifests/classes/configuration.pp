class common::classes::configuration {

  file { '/etc/localtime' :
    ensure => symlink,
    target => '/usr/share/zoneinfo/UTC'
  }

  file { '/etc/profile.d/custom_profile.sh' :
    ensure => file,
    source => 'puppet:///modules/common/etc/profile.d/custom_profile.sh'
  }

}

