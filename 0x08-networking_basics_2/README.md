## **Networking basics #1**

 This project was a deeper delve into Networking.
 

 ## *Learning Objectives*:
 - What is localhost/127.0.0.1
 - What is 0.0.0.0
 - What is /etc/hosts
 - How to display your machine’s active network interfaces

 ## Tasks

 - [0-change_your_home_IP](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x08-networking_basics_2/0-change_your_home_IP)

	* A Bash script that configures an Ubuntu server with the following requirements:
	* localhost resolves to 127.0.0.2
	* facebook.com resolves to 8.8.8.8
 - [1-show_attached_IPs](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x08-networking_basics_2/1-show_attached_IPs)

	* A Bash script that displays all active IPv4 IPs on the machine it’s executed on
	## Usage: ./1-show_attached_IPs | cat -e

 - [100-port_listening_on_localhost](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x08-networking_basics_2/100-port_listening_on_localhost)


	* A Bash script that listens on port 98 on localhost
	## Usage:
		Starting my script: ./100-port_listening_on_localhost
		Connecting to localhost on port 98 using telnet and typing some text: telnet localhost 98
		Receiving the text on the other side: ./100-port_listening_on_localhost
