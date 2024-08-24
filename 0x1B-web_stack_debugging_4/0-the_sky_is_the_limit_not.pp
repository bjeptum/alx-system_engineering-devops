# Manifest to set ulimit for Nginx and ensure it is running

file { '/etc/default/nginx':
  ensure  => file,
  content => "ULIMIT=\"-n 1048576\"\n",
  notify  => Service['nginx'],
}

service { 'nginx':
  ensure => running,
  enable => true,
}
