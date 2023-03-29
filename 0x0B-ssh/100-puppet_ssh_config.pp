# Client SSH configuration file with puppet  set up to connect to a server without typing a password
file { '/home/root/.ssh/config':
  ensure  => file,
  mode    => '0600',
  content => "
    Host cb05d3694d1e
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
    RSAAuthentication yes
    PubkeyAuthentication yes
  ",
}
