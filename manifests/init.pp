# == Class: squid
#
# Deploy and Configure Sqiud proxy server
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { squid:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Russell McGregor <rdmcgregor@gmail.com>
#
# === Copyright
#
# Copyright 2014 Brisbane City Council, unless otherwise noted.
#
class squid inherits squid::params {
  include stdlib

  anchor { 'squid::begin': }
  -> class { 'squid::package': }
  -> class { 'squid::config': }
  ~> class { 'squid::service': }
  -> anchor { 'squid::end': }
}
