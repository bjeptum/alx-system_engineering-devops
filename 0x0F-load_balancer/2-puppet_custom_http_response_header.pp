# Add a custom HTTP header with Puppet

# Ensure the 'apt' package manager is up to date
exec { 'apt_update':
  command => '/usr/bin/apt-get update',
  path    => '/usr/bin',
  before  => Package['nginx'],
}

# Ensure the Nginx package is installed
package { 'nginx':
  ensure => installed,
  before => File['/var/www/html/index.html'],
}

# Ensure the Nginx service is running
service { 'nginx':
  ensure     => running,
  enable     => true,
  subscribe  => File['/etc/nginx/nginx.conf'],
  require    => Package['nginx'],
}

# Configure the firewall to allow HTTP traffic
exec { 'allow_nginx_http':
  command => '/usr/sbin/ufw allow "Nginx HTTP"',
  path    => ['/usr/sbin', '/usr/bin'],
  unless  => '/usr/sbin/ufw status | grep -q "Nginx HTTP"',
  require => Package['nginx'],
}

# Ensure the custom 404 page is created
file { '/var/www/html/404.html':
  ensure  => file,
  content => 'Ceci n\'est pas une page',
  require => Package['nginx'],
}

# Ensure the custom index.html page is created
file { '/var/www/html/index.html':
  ensure  => file,
  content => 'Hello World!',
  require => Package['nginx'],
}

# Add the custom HTTP header to the Nginx configuration
exec { 'add_custom_header':
  command => 'sed -i.bak "/http {/a \\    add_header X-Served-By $HOSTNAME;" /etc/nginx/nginx.conf',
  path    => ['/bin', '/usr/bin'],
  require => Package['nginx'],
  notify  => Service['nginx'],
}
