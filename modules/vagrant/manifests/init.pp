class vagrant () {
  stage { 'success':
    require => Stage[main],
  }

  class { 'vagrant::friendly_success_msg':
    stage => success,
  }

  class { timezone:
    timezone => 'Asia/Shanghai',
  }

  file { '/etc/env.d/02locale':
    ensure  => file,
    owner   => root,
    group   => root,
    content => 'LANG="de_DE.UTF-8"\nLC_COLLATE="C"',
  }
}
