# Client configuration file with puppet
file { '~/.ssh/school':
  ensure  => file,
  owner   => 'user',
  group   => 'user',
  mode    => '0600',
  content => '
  Host root@cb05d3694d1e
  IdentityFile ~/.ssh/school
  PasswordAuthentication no
  RSAAuthentication yes
  PubkeyAuthentication yes
  ',
}
