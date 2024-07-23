## 0x12. Web stack debugging #2

In this project, using debugging skills, update permissions to allow for software to be run as another user apart from root.

### Requirements

 *Task 1*
- write a Bash script that accepts one argument
- the script should run the whoami command under the user passed as an argument
- make sure to try your script by passing different users

*Task 2*

Fix container so that Ngins is running as the nginx user

- nginx must be running as nginx user
- nginx must be listening on all active IPs on port 8080
- You cannot use apt-get remove
- Write a Bash script that configures the container to fit the above requirements
