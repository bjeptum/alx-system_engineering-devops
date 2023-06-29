# Manifest that installs Nginx to server

exec { 'update-apt':
  command     => 'apt-get update',
  path        => '/usr/bin',
  refreshonly => true,
}

package { 'nginx':
  ensure      => installed,
  require     => Exec['update-apt'],
}

service { 'nginx':
  ensure      => running,
  enable      => true,
  require     => Package['nginx'],
  subscribe   => Exec['update-nginx-config'],
}

firewall { 'nginx-http':
  port        => 80,
  proto       => tcp,
  action      => 'accept',
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
  notify  => Service['nginx'],
}

exec { 'restart-nginx':
  command     => 'service nginx restart',
  path        => '/usr/bin',
  refreshonly => true,
}
