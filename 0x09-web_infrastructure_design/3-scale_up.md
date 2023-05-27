 ## **Description**

[Diagram](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/3-scale_up.png)

This is a scaled up web infrastructure. There are no Single Point of Failures(SPOFs) and each of the major components have been moved to separate GNU Linux Servers. SSL protection would not be terminated at the load-balancer and each server's network is protected with a firewall and they are also monitored.

### **Specifications**

The addition of a firewall between each server protects each server from unwanted and unauthorized users.

### **Issues with the Infrastructure**

High maintenance costs

Funds would be used in ensuring that each of the major components had its own server. The addition of more servers will also result in high electricity consumption.
