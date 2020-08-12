
## Theory


### Checking Network ACL Access

![](/images/Bastion-Server.png)

- To be able to install any packages on our DB instance we need to be able to connect to the internet

- If we run ``` sudo apt-get install nginx ```the download will stay on 0% as our private NACL subnet doesn't allow inbound communication from the internet

- Thus, it will not connect to the route table or the IGW and so no internet connection can be made

- This means we need to edit our private NACL inbound access to allow incoming traffic, on this occasion we will allow all traffic

![](/images/Network-ACL-Allow-ALL.png)


### Checking Route Table Access

- In addition to the Network ACL we must also allow internet traffic from

![](/images/Private-Route-Table.png)



- When we run export DB_HOSTS we would add in the IP of our DB instance in - We would then run this command in our app instance and our app instance would go into our DB instance to grab the information from our database

- This means we will need to allow our public subnet to enter our private subnet on port 27017
