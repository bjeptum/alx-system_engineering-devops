## 0x0B-ssh


This project I focused on learning about:

 - What is a SSH
 - How to create an SSH RSA key pair
 - How to connect to a remote host using SSH.

### Technologies
Scripts written in Bash 4.3.11(1)
Tested on Ubuntu 20.04 LTS
Puppet 3.8

### Files

| Concept  | Description |
| ------------- | ------------- |
| 1) 0-use_a_private_key | Uses ssh to connect to a server using a private key previously generated |
| 2) 1-create_ssh_key_pair | Creates an RSA key pair |
| 3) 2-ssh_config | SSH configuration file for the local SSH client using a private key and refuse usage of password authentication |
| 4) 4-puppet_ssh_config.pp | Sets up client SSH configuration file to connect to a server without typing a password using Puppet |
