# Ensure wp-settings.php file exists with the correct ownership and permissions
file { '/var/www/html/wp-settings.php':
  ensure => file,
  owner  => 'www-data',
  group  => 'www-data',
  mode   => '0644',
}

# Correct teh typo in the file if it exists
exec { 'correct_typo':
  path    => ['/usr/bin', '/sbin', '/bin', '/usr/sbin'],
  command => 'sed -i "s/.phpp/.php/g" /var/www/html/wp-settings.php',
  onlyif  => 'grep -q ".phpp" /var/www/html/wp-settings.php',
  require => File['/var/www/html/wp-settings.php'],
}

# Display the content of wp-settings.php
exec { 'show_wp_settings':
  command => 'cat /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
  require => Exec['correct_typo'],  # Ensure this runs after correcting the typo
}
