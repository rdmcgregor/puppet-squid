# == Class: squid::package
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


class squid::package {
  package { $squid::params::squid_package:
    ensure => 'present',
  }
}
