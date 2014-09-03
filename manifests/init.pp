# == Class: squid
#
# Deploy and Configure Sqiud proxy server
#
# === Authors
#
# Russell McGregor <rdmcgregor@gmail.com>
# Russell McGregor <russell.mcgregor@brisbane.qld.gov.au>
# === Copyright
#
# Copyright 2014 Brisbane City Council, unless otherwise noted.
#
class squid (
  $acl_clients                    = $squid::params::acl_clients,
  $acl_add_safe_ports             = $squid::params::acl_add_safe_ports,
  $acl_add_ssl_safe_ports         = $squid::params::acl_add_ssl_safe_ports,
  $cache_mem                      = $squid::params::cache_mem, 
  $maximum_object_size_in_memory 	= $squid::params::maximum_object_size_in_memory, 
  $memory_replacement_policy      = $squid::params::memory_replacement_policy,
  $cache_replacement_policy 		  = $squid::params::cache_replacement_policy,
  $cache_dir                      = $squid::params::cache_dir,
  $cache_dir_type                 = $squid::params::cache_dir_type,
  $cache_dir_size                 = $squid::params::cache_dir_size,
  $maximum_object_size            = $squid::params::maximum_object_size,
  $cache_swap_low                 = $squid::params::cache_swap_low,
  $cache_swap_high                = $squid::params::cache_swap_high,
  $cachemgr_passwd                = $squid::params::cachemgr_passwd,
  $visible_hostname               = $squid::params::visible_hostname,
  $snmp_port                      = $squid::params::snmp_port,
  $refresh_pattern                = $squid::params::refresh_pattern,
  $negative_ttl                   = $squid::params::negative_ttl,
  $cache_peers                    = $squid::params::cache_peers
) inherits squid::params {
  include stdlib

  anchor { 'squid::begin': }
  -> class { 'squid::package': }
  -> class { 'squid::config': }
  ~> class { 'squid::service': }
  -> anchor { 'squid::end': }
}
