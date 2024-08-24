## 0x1B. Web stack debugging #4

### Background context

In this web stack debugging task, I was testing how well the provided web server setup featuring Nginx is doing under pressure and it turned out it was not doing well: there was a huge amount of failed requests.

For the benchmarking, I used ApacheBench which is a quite popular tool in the industry. It allowed simulation of  HTTP requests to a web server. In this case, using the provide server,I made 2000 requests to my server with 100 requests at a time. 
`
 ab -c 100 -n 2000 localhost/
 `
 I found that a number of requests failed,  I had to fix the stack so that we get to 0.
