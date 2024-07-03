# Puppet manifest that installs Nginx to server

exec { 'update-apt':
  command     => 'apt-get update',
  path        => '/usr/bin',
  refreshonly => true,
}

package { 'nginx':
  ensure      => installed,
}

service { 'nginx':
  ensure      => running,
  require     => Package['nginx'],
}

firewall { 'nginx-http':
  port        => 80,
}

file { '/etc/nginx/sites-available/default':
  ensure      => present,
  content     => template('nginx/default.erb'),
  require     => Package['nginx'],
  notify      => Service['nginx'],
}

file { '/var/www/html/index.html':
  ensure      => present,
  content     => 'Hello World!',
  require     => Package['nginx'],
}

exec { 'restart-nginx':
  command     => 'service nginx restart',
  path        => '/usr/bin',
  refreshonly => true,
}
