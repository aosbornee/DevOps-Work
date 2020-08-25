# Configuration Management And Orchestration Tools :memo: :video_game:


### Contents

- [x] [Ansible](#What-is-Ansible)
- [x] [Why Ansible?](#Why-Ansible)
- [x] [Infrastructure As Code](#Infrastructure-As-Code)
- [X] [Hybrid Cloud](#Hybrid-Cloud)
- [x] [What is Configuration Management?](#what-is-configuration-management)
- [x] [Using Ansible With Vagrant](Ansible-With-Vagrant.md)
- [x] [Ansible ad-hoc Commands](Ansible-Ad-hoc-Commands.md)
- [x] [Ansible Playbooks](Ansible-Playbooks.md)
- [x] [Using an AMI to create an EC2 in Ansible](Using-an-AMI-to-create-an-EC2-in-Ansible.md)
- [x] [Route 53](#Route-53)
- [x] [Load Balancing](#Load-Balancing)
- [x] [Immutable vs Mutable Infrastructure](#Immutable-vs-Mutable-Infrastructure)
- [x] [Highly available and scalable infrastructure](#Highly-available-and-scalable-infrastructure)
- [x] [Terraform](#Terraform-Introduction.md)
- [x] [Orchestrating the creation of a VPC with Terraform](Terraform-With-VPC.md)
cloudwatch
monitoring tools
load balancers
nagios




### What is Ansible

- Ansible is an open source, configuration management tool used to provision IT infrastructure
- Ansible can automate repetitive tasks that would otherwise be done manually


### Why Ansible

- Ansible is agentless, as long as we have installed Ansible on the controller then we do not
need to install it on other servers, thus keeping our servers lightweight and easily manageable

- By running a single Ansible playbook within a controller, it can provision over 50 servers
at a time, each with their own necessary dependencies and without the need to manually enter these servers

- Ansible improves reliability as it ensures the correct dependencies will be installed every time the playbook
is run, thus the production environment will always be the same

- Ansible is very simple as it a lot of configuration of different servers can be run through one playbook, in addition
connections are through SSH which is the industry standard.

- Ansible is very cost effective, the reproducibility of the IaC reduces the chance of any run time errors, resulting in servers
running efficiently and no money being lost



![](/images/Ansible-Controller.png)


- We will install ansible on our controller VM, allowing the other VMs to be
serverless

- We can then easily SSH from our controller into either of our VMs when
necessary


### Infrastructure As Code

- This is the process of managing and provisioning servers through source code,
as opposed to physical hardware configuration

- For IaC, the infrastructure is treated the same way that any other code would be

- IaC can be stored in a shared repository, it allows access for the whole dev team so they
can build software in the same env where it's deployed

- Instead of system admins login into computers and configuring them from documentation,
code should be run on the machine to converge it to the desired state

- Iac along with cloud the development of cloud computing means that one Ops engineer can
start up 100 instances and provision them all through one command


### Why use IaC

-



### Hybrid Cloud

-


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


### Route 52 policies in AWS

Weighted routing policy, we can assign different numerical weights to multiple servers, thus directing a higher or lower percentage of traffic to each server

Latency-based routing policy, this will direct traffic requests to the server that has the lowest possible latency

Failover routing policy, will send traffic to the primary server if it’s healthy. It if’s failing it will be diverted to back up resources


## Elastic Load Balancing

- Automatically routes incoming traffic across different existing servers to balance out the traffic
- This ensures all of our servers are working as evenly as possible

## Auto Scaling

- We can assign AWS to increase or decrease the number of instances depending
on a certain metric value
- This allows us to scale our infrastructure based on the demand
- CloudWatch triggers auto scaling when an alarm is triggered
- It is best practice to implement both ELB and auto scaling together to reap
the best benefits


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




## Monitoring Tools

### Amazon CloudWatch

- This is a component of AWS that provides real time monitoring for AWS resources such as EC2s, EBSs and Elastic load balancers etc


#### There are many monitoring logs that cloud watch provides

- Cloudwatch allows you to set alarms when our metrics reach a certain level and either notify us or carry out automated actions

- E.g. We can tell CloudWatch that if one of our EC2 instances CPU reaches over 70% then spin up another server

- You can also add alarms to CloudWatch dashboards and monitor them visually

-

### Nagios

- Nagios is used in continuous monitoring which is a process to detect any bugs or respond to errors in it's infrastructure

- Nagios runs plugins on a server which can monitor the status of remote servers and alert the technical team if a error arises
