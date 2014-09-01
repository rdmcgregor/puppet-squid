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
class squid (
  $allowed_src 				= $squid::params::allowed_src, 
  $cache_mem 				= $squid::params::cache_mem, 
  $maximum_object_size_in_memory 	= $squid::params::maximum_object_size_in_memory, 
  $memory_replacement_policy 		= $squid::params::memory_replacement_policy,
  $cache_replacement_policy 		= $squid::params::cache_replacement_policy,
  $cache_dir 				= $squid::params::cache_dir,
  $cache_dir_type 			= $squid::params::cache_dir_type,
  $cache_dir_size 			= $squid::params::cache_dir_size,
  $maximum_object_size 			= $squid::params::maximum_object_size,
  $cache_swap_low 			= $squid::params::cache_swap_low,
  $cache_swap_high 			= $squid::params::cache_swap_high,
  $cachemgr_passwd 			= $squid::params::cachemgr_passwd,
  $visible_hostname 			= $squid::params::visible_hostname,
  $snmp_port 				= $squid::params::snmp_port,
  $refresh_pattern 			= $squid::params::refresh_pattern,
  $negative_ttl 			= $squid::params::negative_ttl,
  $cache_peers 				= $squid::params::cache_peers
) inherits squid::params {
  include stdlib

  anchor { 'squid::begin': }
  -> class { 'squid::package': }
  -> class { 'squid::config': }
  ~> class { 'squid::service': }
  -> anchor { 'squid::end': }
}
