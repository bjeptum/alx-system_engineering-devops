## Configuration_management using Puppet.

This project entails introduction to configuration management. I did implement the Puppet tool.
Puppet is a popular open-source configuration management tool that enables administrators to define and enforce the desired state of their infrastructure.


*Learning Objectives:*

 - Introduction to Configuration Management
 - Puppet resource type
 - Puppet's Declarative Language: Modeling Instead of Scripting
 - Puppet lint for code quality

 ### Install puppet

`
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet
`
The project was simply a set of tasks to familiarize with the basic level syntax which is virtually identical in newer versions of Puppet,and so no need to attempt to upgrade versions.

 ### Install puppet-lint

 `
 gem install puppet-lint
 `
