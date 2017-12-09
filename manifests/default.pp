Exec {
    path      => '/usr/bin:/bin:/usr/sbin:/sbin',
    logoutput => on_failure,
}

include vagrant
