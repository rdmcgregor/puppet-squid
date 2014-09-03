# == Class: squid::config
#
#  Configuration class associated with Squid module
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

class squid::config {
  file { '/etc/squid3/squid.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('squid/squid.conf.erb'),
    }
}
