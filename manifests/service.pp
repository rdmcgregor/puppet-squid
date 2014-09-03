# == Class: squid::service
#
#  Service class associated with Squid module
#
# === Authors
#
# Russell McGregor <rdmcgregor@gmail.com>
# Russell McGregor <russell.mcgregor@brisbane.qld.gov.au>
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
