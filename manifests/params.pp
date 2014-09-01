class squid::params {
  $localnet_src = '10.0.0.0/8',
  $cache_mem = '256 MB',
  $maximum_object_size_in_memory = '512 KB',
  $memory_replacement_policy = 'lru',
  $cache_replacement_policy = 'lru',
  $cache_dir = '/var/spool/squid',
  $cache_dir_type = 'ufs',
  $cache_dir_size = 100,
  $maximum_object_size = '4096 KB',
  $cache_swap_low = 90,
  $cache_swap_high = 95,
  $log_fqdn = off,
  $cachemgr_passwd = disable,
  $visible_hostname = undef,
  $snmp_port = undef,
  $refresh_pattern = undef,
  $negative_ttl = undef,
  # Cache peers is an array of cache_peer lines in full
  # ie: cache_peer proxy.domain.com    parent 3128 3130 
  $cache_peers = undef,
  case $::operatingsystem{
    ubuntu,debian: {
      $package = 'squid',
      $service_name = 'squid',
      $squid_user = 'proxy',
      $squid_group = 'proxy',
    }
    default: {
      $package = 'squid',
      $service_name = 'squid',
      $squid_user = 'proxy',
      $squid_group = 'proxy',
    }

}
