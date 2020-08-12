
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




### Running Our Database Pages On Our App instance

- When we run export DB_HOSTS we would add in the IP of our DB instance in - We would then run this command in our app instance and our app instance would go into our DB instance to grab the information from our database

- This means we will need to allow our public subnet to enter our private subnet on port 27017

We will need to do the following

- First download mongod and other dependencies on the db instance

- SCP our app folder into our App instance

- provision our app instance

export DB_hosts with IP-OF-DB-Instance


### Provisioning And Running Our App Instance

- When we stop our instances, we will lose the day within them, to overcome this we want to create provision files which mean when we run our files the correct dependencies will be automatically installed

- Our setup file will look like such:

```
scp -i ~/.ssh/DevOpsStudents.pem -r ~/Code/Testing-VPC-Network/app/ ubuntu@3.249.218.23:/home/ubuntu/
scp -i ~/.ssh/DevOpsStudents.pem -r ~/Code/Testing-VPC-Network/environment/app/provision.sh ubuntu@3.249.218.23:/home/ubuntu/
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@3.249.218.23 -i $ ./provision.sh

```

- We are first secure copying our app folder, which contains the files needed to run our app
- We then run secure copy the provision.sh file which will install the dependencies needed to run the App
- Lastly, we ssh into our app instance and run our provision.sh file within this instance

#### Our Provision.sh file will do the following:
- Download NGINX
- Create A reverse Proxy to port 80
- download Nodejs and NPM
- Download PM2
- Add an ENV variable to the bashrc file, that directs our app instance to the db to retrieve the dara


Now that both instances have been provisioned and are running we can now put our app IP-Address into the browser and would hope to see our app listed as well as posts working


![](/git-vid/gif-version-of-posts.gif)

### Errors Faced

- When I ran the provisions I would get an error saying
'Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), is another process using it?''

- This was overcome by running:
```
sudo dpkg --configure -a
```
