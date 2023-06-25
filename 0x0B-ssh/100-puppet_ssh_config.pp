# Client configuration for local SSH client(w/ Puppet
file { '/root/.ssh/config':
ensure  => file,
content => "
Host root@aa54152689ce
IdentityFile ~/.ssh/school
PasswordAuthentication no
RSAAuthentication yes
PubkeyAuthentication yes
",
}
