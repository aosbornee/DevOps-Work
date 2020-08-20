# Configuration Management :memo: :video_game:


### Contents

- [x] [Ansible](Ansible-Introduction.md)
- [x] [Why Ansible?](Ansible-Introduction.md)
- [x] [What is Configuration Management?](#what-is-configuration-management)
- [x] [Using Ansible With Vagrant](Ansible-With-Vagrant.md)
- [x] [Ansible ad-hoc Commands](Ansible-Ad-hoc-Commands.md)
- [x] [Ansible Playbooks](Ansible-Playbooks.md)
- [x] [Using an AMI to create an EC2 in Ansible](Using-an-AMI-to-create-an-EC2-in-Ansible.md)
- [x] [What is Route 53](## Route 53)
- [x] [What is Load Balancing](## Load Balancing)
- [x] [Immutable vs Mutable Infrastructure](## Immutable vs Mutable Infrastructure)
- [x] [Highly available and scalable infrastructure](## Highly available and scalable infrastructure)


![](/images/Ansible-Controller.png)


- We will install ansible on our controller VM, allowing the other VMs to be
serverless as we do not need to install Ansible on the other two VMs

- We can then easily SSH from our controller into either of our VMs when
necessary



### What is Configuration Management

- It’s the discipline of ensuring that all software and hardware assets which a company owns are known and tracked at all times—any future changes to these assets are known and tracked. You can think of configuration management like an always up-to-date inventory for your technology assets, a single source of truth.

![](/images/Configuration-Management.jpg)


- In practice configurations management could relate to IaC and capture the current
state of our Infrastructure, this could be done using tools such as Ansible, Puppet
or Chef


##### Benefits of configuration management

**Disaster Recovery**

- If there is a problem, this ensures that our assets are easily recoverable and go
back to the working state

**Uptime and Site Reliability**

- With proper configuration management, our tests can mimic production, so there's
less chance for problems at runtime

- If our server went down it could costs larger companies huge amounts of money

**Easier Scaling**

- Configuration management ensures that we know the state of our servers at all times

- When we want to increase our number of servers to scale up to meet demand, we simply
have to click a button to run the script


## Route 53

- Amazon Route 53 provides highly available and scalable Domain Name System (DNS), domain name registration
- Also beneficial for disaster recovery plans
- DNS fail over can monitor the status of the instance and if it fails then traffic can be redirected to another
working EC2 instance without the user performance being deprecated

## Load Balancing

- Distribute client requests or network load efficiently across many servers
- There could be certain features put in place that if one server reaches up to 70% load
then traffic can be slowly redirected elsewhere
- In addition to this, it provides flexibility to add or subtract servers based on client demand

- The usage of NGINX reverse proxy is an example of how we gave used load balancing

## Immutable vs Mutable Infrastructure

Mutable means the ability to change
- In a traditional mutable server infrastructure, servers are continually updated and modified in place

Immutable means not able to change

- An immutable infrastructure is another infrastructure paradigm in which servers are never modified after they’re deployed.

- Immutable infrastructures are more consistent and reliable

## Highly available and scalable infrastructure

### Highly scalable

- If one EC2 goes down we can move it elsewhere

- Easily scalable architecture allows us to


- Before cloud computing you would scale up your PC hardware when on premise,
this would be done by buying more RAM
- In addition we could scale out by buying more hardware PCs


- On EC2 this can be done from going to micro to medium
- We can also scale out by spinning up more instances

- Load balancing is splitting the traffic between the backend servers that we have,
thus also known as a server farm


- In our case if we were receiving

### Highly available

- This is all about reducing latency so we can ping servers quicker and thus increase customer performance
-This can be done by increasing network infrastructure
- In addition this could be scaled up by having a more availability zones


- Replica set
-
