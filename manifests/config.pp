# == Class: squid::config
#
#  Configuration class associated with Squid module
#
# === Authors
#
# Russell McGregor <rdmcgregor@gmail.com>
#
# === Copyright
#
# Copyright 2018 Brisbane City Council, unless otherwise noted.
#

class squid::config {
  file { '/etc/squid/squid.conf':
    ensure  => 'file',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('squid/squid.conf.erb'),
    }
}
