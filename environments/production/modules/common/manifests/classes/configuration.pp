class common::classes::configuration {

  file { '/etc/localtime' :
    ensure => symlink,
    target => '/usr/share/zoneinfo/UTC'
  }

  file { '/etc/profile.d/custom_profile.sh' :
    ensure => file,
    source => 'puppet:///modules/common/etc/profile.d/custom_profile.sh'
  }

  file { '/etc/yum.repos.d/internal-mirror.repo' :
    ensure => file,
    source => 'puppet:///modules/common/etc/yum.repos.d/internal-mirror.repo'
  }
}

