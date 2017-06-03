class common::classes::install {

  $common_packages = [ 
    'wget',
    'strace',
    'telnet',
    'nc',
    'git',
    'ntp',
    'screen',
    'lsof',
    'tree'
  ]


  package { $common_packages :
    ensure => present,
  }
