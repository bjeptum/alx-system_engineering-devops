# Client SSH configuration file with puppet  set up to connect to a server without typing a password
exec { 'echo "PasswordAuthentication no\nIdentityFile ~/.ssh/school" >> /etc/ssh/ssh_config':
        path    => '/bin/'
}
