
## Theory


### Checking Network ACL Access

![](/images/Bastion-Server.png)

- To be able to install any packages on our DB instance we need to be able to connect to the internet

- If we run ``` sudo apt-get install nginx ```the download will stay on 0% as our private NACL subnet doesn't allow inbound communication from the internet

- Thus, it will not connect to the route table or the IGW and so no internet connection can be made

- This means we need to edit our private NACL inbound access to allow incoming traffic, on this occasion we will allow all traffic

![](/images/Network-ACL-Allow-ALL.png)


### Checking Private Route Table Access


- In addition to this we want to allow our Private route table to accept all traffic coming from the internet
- We also want to add the target as our IGW as this is where the internet is coming from

![](/images/Private-Route-Table.png)




### Steps

- When we run our App, the instance should check the DB_HOSTS variable and go
to this address to receive the data necessary to run the posts page


### We will need to do the following:

- Allow our public subnet to enter our private subnet on port 27017 (firewall settings)

- Download mongod and other dependencies on the db instance

- SCP our app folder into our App instance

- provision our app instance

- export DB_hosts with IP-OF-DB-Instance

- Run our APP instance

- Enter our APP instance IP on our browser



### Entering Our Bastion Server and then our DB instance

- As said previously, the only way we can ssh into our DB instance is through our bastion server
- To be able to do this we must secure copy our ssh key from our local PC to our bastion in order for us to then be able to enter the DB
- Once in the DB we can setup the mongod dependencies

We must first locate to our SSH key that allows us to enter our instance, to do this we will run the following two commands:

```
scp -i ~/.ssh/DevOpsStudents.pem DevOpsStudents.pem ubuntu@54.170.220.240:/home/ubuntu/.ssh/
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@54.170.220.240
```

- Now when we SSH into our bastion, and locate our .ssh folder, our key should be present there

![](/images/ssh-key-and-folder-in-bastion.png)

- This means from here we can run the following command and it should allow us to enter our DB instance, using the DB private IP

```
sudo ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@124.11.2.59
```



### Persistent DB instance database

- If we SSH into our DB instance using our private IP address, all the information stays persistent because our Private IP remains the same



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
- Add an ENV variable to the bashrc file, that directs our app instance to the db to retrieve the data


## Finished Project!

Now that both instances have been provisioned and are running we can now put our app IP-Address into the browser and would hope to see our app listed as well as posts working


![](/git-vid/gif-version-of-posts.gif)

### Errors Faced

- Initially my DB was not downloading Mongod, the installation was staying on 0%
- This was overcome by allowing all internet access to my private route table as this is where my private subnet receives internet from

- When we ran the provisions we get an error saying
'Unable to acquire the dpkg frontend lock (/var/lib/dpkg/lock-frontend), is another process using it?''

- This was overcome by running:
```
sudo dpkg --configure -a
```

- Once inside the DB instance, when we tried to run a provision.sh file we came across an error saying
```
unable to resolve host ip xx-xx-xx-xx
```

- To solve this we need to enter our hosts on etc fold
