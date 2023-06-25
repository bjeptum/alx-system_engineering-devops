# Client configuration for local SSH client(w/ Puppet
file { '/etc/ssh/ssh_config':
ensure  => file,
content => "
Host root@aa54152689ce
IdentityFile ~/.ssh/school
PasswordAuthentication no
RSAAuthentication yes
PubkeyAuthentication yes
",
}
