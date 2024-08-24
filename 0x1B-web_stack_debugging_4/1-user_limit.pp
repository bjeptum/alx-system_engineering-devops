# Manifest to login with holberton user and open files
# Ensure the limits.conf file exists configured correctly
file { '/etc/security/limits.conf':
  ensure  => file,
  mode    => '0644',
  # lint:ignore:140chars
  content => "root soft nofile 60000\nroot hard nofile 60000\n* soft nofile 60000\n* hard nofile 60000\nholberton soft nofile 60000\nholberton hard nofile 60000\n",
  # lint:endignore
  notify  => Exec['reload-systemd'],
}
# Update systemd configuration to increase file descriptor limits
file { '/etc/systemd/system.conf':
  ensure  => file,
  mode    => '0644',
  content => "[Manager]\nDefaultLimitNOFILE=60000\n",
  notify  => Exec['reload-systemd'],
}

# Reload the systemd configuration to apply changes
exec { 'reload-systemd':
  command     => '/bin/systemctl daemon-reload',
  refreshonly => true,
  path        => '/bin:/usr/local/bin',
}
