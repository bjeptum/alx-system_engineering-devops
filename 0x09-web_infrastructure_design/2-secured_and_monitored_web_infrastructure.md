## **Secured and monitored web infrastructure**

[Diagram Details]()

###**Description**

This infrastructure involves a web infrastructure that has adequate security measures in place to protect against attacks and unauthorized access by the use of firewalls and HTTPS encryption.
In addition, it has 3 monitoring tools, which collect and analyze various metrics to identify potential issues or areas of improvement, and proactive management of the infrastructure.

###**Specifications of this Infrastructure**

1) Purpose of the firewalls
 
The firewalls  are for protecting the network from unauthorized access by acting as an intermediary between the internal network and external network.

2) Purpose of the SSL Certificates

The use of SSL certicates ensures that data transmitted between the server and client is encrypted, preventing any unauthorized access.
It ensures privacy, integrity, and identification.

3) Purpose of the monitoring clients

The monitoring clients are for monitoring the servers and the external network.
They analyse the performance and operations of the servers, measure the overall health, and alert the administrators if the servers are not performing as expected.The monitoring tool observes the servers and provides key metrics about the servers' operations to the administrators. It automatically tests the accessibility of the servers, measures response time, and alerts for errors such as missing/corrupt files, security vulnerabilities/violations and any other issues.

*How it collects data*

The monitoring tool collects data by using various mechanisms and protocols (example agents[Datadog Agents] or daemons)to access and extract data from the systems and applications monitored. It can include collecting system logs, network traffic, performance metric and much more depending on the specific monitoring tool and configuration. The tool then processes and analyzes the data to provide insights into the performance and status of the systems and applications. 

###**Issues of this infrastructure**

1) Terminating SSL at the load balancer level

If this is done, the traffic between the load balancer and the web server would be unencrypted.

2) Having only one MySQL server capable of accepting writes is a problem

This is not scalable and would be a single point of failure for this web infrastructure.

3) Having servers with all the same components (database, web server and application server) is a problem

The components in this case, would contend for resources on the server like CPU, Memory, etc. This results in pooor performance and also makes it difficult to locate the source of the problem.
