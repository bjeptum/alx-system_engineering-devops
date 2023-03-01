**#Distributed Web-Infrastructure

.[Diagram Details](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/1-distributed_web_infrastructure.screenshot.png)


**Description (inclusive of the additional elements)**

This is a web infrastructure with multiple servers(two) that tries to reduce traffic to the primary server by distributing some of the load to the replica server with the aid of a server responsible for balancing the load between the two servers. The two servers function as a single unit to serve web content and applications. 
It is designed to improve scalability, availability, and performance by distributing the workload across multiple servers, while still providing a unified and seamless user experience.

**Specifics about this Infrastructure**

1) The distribution algorithm in which the load balancer is configured and how it works

The load balancer (HAProxy) is configured with Round Robin distribution algorithm.
The Round Robin distribution algorithm is dynamic, where requests are served by the server sequentially one after another.
This algorithm is used when servers are of equal specification and there are not much persistent connections. In this case, each server is used behind the load balancer in turns, according to their weights.

2) The setup enabled by the load balancer

The HAProxy load-balancer is enabling an Active-Passive setup rather than an Active-Active setup. 
In an Active-Active setup, it involves multiple load balancers that are all actively handling incoming requests at the same time to ensure high availability and improve performance. The load balancer distributes workloads accross all nodes in order to prevent any single node from getting overloaded. This is because there are more nodes available to serve. 


3) How a database Primary-Replica (Master-Slave) cluster works

A Primary-Replica setup configures one server to act as the primary server and the other server as the Replica of the primary server.
The primary server is capable of performing read/write requests while the replica server performs only read requests. Data is synchonized between the primary and replica servers whenever the primary server executes a write operation.

4) Difference between the Primary node and the Replica node in regard to the application

The Primary node is responsible for all the write operations while the Replica node is capableof processing read operations which decreases the read traffic to the Primary node.

**Issues with the Infrasructure**

1) SPOF (Single Point Of Failure)

  There are multiple SPOFs, the load balancer and the application server connecting to the primary database are SPOFs. If they are down, the entire site would not be working.

2) No monitoring

There are no tools or processes to track and identify potential performance or availability issues, which could lead to downtime or other problems for users.

3) Security issues (no firewall, no HTTPS)

There is no firewall or HTTPS encryption, this leaves the web infrastructure vulnerable to unauthorized access. This can result in serious consequences for the user.
