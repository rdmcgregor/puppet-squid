# == Class: squid::package
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


class squid::package {
  package { $squid::params::squid_package:
    ensure => 'present',
  }
}
