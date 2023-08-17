class nginx_ulimit {
  # Define the desired ulimit value
  $ulimit_value = 4096

  # Set ulimit for the Nginx user
  user { 'nginx':
    ensure => present,
    shell  => '/sbin/nologin',
    managehome => false,
    before => Exec['set_nginx_ulimit'],
  }

  # Exec resource to set the ulimit
  exec { 'set_nginx_ulimit':
    command => "/bin/su -s /bin/bash - nginx -c 'ulimit -n ${ulimit_value}'",
    unless  => "/bin/su -s /bin/bash - nginx -c 'ulimit -n' | grep -q ${ulimit_value}",
    require => User['nginx'],
  }
}

include nginx_ulimit
