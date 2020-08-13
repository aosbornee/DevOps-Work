# Bastion Servers


## What is a bastion server

- A specialized computer that allows you to access your private subnet database instance

![](/images/Bastion-Server.png)

- Our bastion server resides in our public subnet

- Our app servers within our public subnet can also access our private subnet Db instance, however this can only take place on port 27017 that we have specified in the inbound rules of the Db instance

- The bastion server can access our private subnet on port 22, which is important because this is what allows us to SSH into our instance

- We secure copy the key from our local PC into the bastion server, from here
we can use this key to enter our Private subnet, where our DB instance resides

- We can only do mongod requests on port 27017, we will SSH into the DB instance to download the dependencies that allows us to requests to mongod


## Why don't we just keep our data within our app Instance

- The reason we use two tier Architecture is because our web app allows lots of traffic from many ports, this means it can be really exposed to potential attacks

- If we look at the diagram below we can see that many ports are open

![](/images/Web-app-allowing-ports.png)

- Therefore, we hold all of our information in a private subnet which
