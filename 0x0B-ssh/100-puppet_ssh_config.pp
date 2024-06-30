# Client configuration file local SSH client(w/ Puppet
file { '/etc/ssh/ssh_config':
ensure  => file,
content => "
Host strongestavenger@strongestavenger
IdentityFile ~/.ssh/school
PasswordAuthentication no
RSAAuthentication yes
PubkeyAuthentication yes
",
}
