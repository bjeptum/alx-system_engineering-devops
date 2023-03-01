#0-simple_web_stack Infrastructure

[Details](https://github.com/bjeptum/alx-system_engineering-devops/blob/master/0x09-web_infrastructure_design/0-simple_web_stack_screenshot.png)

**Description**

This is a simple web infrastructure. It is composed of : client/user, DNS Configuration, Web-Server(Nginx), Database Server(MySQL), Application files and Application Server.
There are no SSL/TLS Certificates or firewalls that provides security for the network traffic.

**Specifications of the Infrastructure**

- What is a server
A server is a computer (hardware or software) that provides data or services to other computers(commonly referred to as clients) via network.

- The role of the domain name
The domain name is a human-readable identifier that represents an IP address. 
The role of a domain name is to provide a memorable and easy-to-remember way for people to access resources on the internet, such as websites, email servers, and other online services.
Example it's easier to remember www.foobar.com than its IP address 8.8.8.8.

- Type of DNS record www is in www.foobar.com

www.foobar.com is of type A record. You can check this by running dig.
Use the link below to check:
https://toolbox.googleapps.com/apps/dig
_**A Record** is for IP address lookup. A web browser is able to load a website using the domain name._

 - Role of the web server
It is a software/hardware that store, process, and deliver requested information or webpages to end users.
It accepts requests via HTTP or secure HTTP(HTTPS) and responsds with the content of the requested resource or an error message.

- Role of the application server
To install. operate and host applications and associated services for end-users, IT services and organizationsn nad facilitates the hosting and delivery of high-end consumer or business applications.
An application server provides a runtime environment for web applications, manages their components and resources, and handles client requests.

- The role of the database
 This is the software that stores and manages data for the website.

- What is the server using to communicate with the computer of the user requesting the website
Communication between the user/client and the server occurs over the internet network through the TCP?IP protocol suite.


*Issues with the Simple Web Stack Infrastructure
_______________________________________________________________________________________________

1) *SPOF(Single Point of Failure)*

There are multiple SPOF in this infrastructure. Example, if the MySQL database server is down, the entire site would be down.

2) *Downtime when maintenance needed*

When one needs to run maintenance checks on any of the components, the server has to be turned off or put down. There is only one server for the website, thus we would experience a downtime.

3) *Lack of scale incase of too much incoming traffic*

The infrastructure relies on only one server to handle all the commponents. 
We would experience lack of scale, meaning that as the number of users and requests to the server increases, the server may become overwhelmed and unable to keep up with demand.
This can result in slow response times, website crashes, and other performance issues that can negatively impact user experience.
