# == Class: squid::service
#
#  Service class associated with Squid module
#
# === Authors
#
# Russell McGregor <rdmcgregor@gmail.com>
#
# === Copyright
#
# Copyright 2014 Brisbane City Council, unless otherwise noted.
#


class squid::service {
  service { $squid::params::squid_service :
    ensure  => 'running',
    enable  => true,
    require => Package[$squid::params::squid_package],
  }
}
