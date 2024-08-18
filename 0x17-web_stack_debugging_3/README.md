## 0x17. Web stack debugging #3

In this project, using debugging skills and strace, I had to find out why Apache is returning a 500 errorand update.

### Requirements

 *Task*

 Fix the error and then automate it using Puppet (instead of using Bash)

Hint:

strace can attach to a current running process
You can use tmux to run strace in one window and curl in another one
Requirements:

The 0-strace_is_your_friend.pp file must contain Puppet code
Use whatever Puppet resource type you want for you fix
