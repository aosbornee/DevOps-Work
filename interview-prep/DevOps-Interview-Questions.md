

## What is DevOps

DevOps is the combination of cultural philosophies, practices, and tools that increases an organization’s ability to deliver applications and services at high velocity,
evolving and improving products at a faster pace than organizations using traditional software development and infrastructure management processes.
This speed enables organizations to better serve their customers and compete more effectively in the market.



## DevOps benefits

- The establishment of automated services means that ongoing operational costs are reduced
and in addition to this deployment time is also much faster

- Continuous Delivery to the customers can also allow greater feedback and thus changes
can be made more efficiently, increasing customer satisfaction

- RISK MITIGATION!!! ---> This is a big one for companies as they do not like risk.
Continuous monitoring of servers means that any problems can be quickly rectified
thanks to tools such as AWS cloud watch, route 53 and nagios that are implemented in DevOps culture

- In addition, using microservices architecture as opposed to Monolithic means that
problems can be sort out and fixed much faster and scaling the software to meet traffic demand is much
easier


## What does it take to make a good DevOps Engineer

- Good attention to detail
- Strong communication to be able to effectively collaborate with the different teams
- Go the extra mile/be determined ~ As a DevOps Engineer you can't shortcut anything,
you must work to complete the product



## Challenges of implementing DevOps

- Transitioning takes a lot of time as it can often be hard to deal with legacy systems
and rebuild those applications to fit within a microservices

- In order to follow the DevOps culture, some job positions may need to be changed
and additional people hired, this could momentarily affect the work ethos

## What is Linux

- Linux is a free open-source operating system

## Why Do Many Companies choose to use Linux

- Almost all software's support Linux, and many are built off of Linux itself

- As mentioned, Linux is free to use and doesn't require any licensing to use

- The security aspect of linux is also very strong, due to it's open source nature
if there are any problems, bug fixes are released almost instantly


## What are the four DevOps Principles


#### Ease Of use

- Tools such as Ansible make provisioning files very easy and abstract the complexity
of tasks

-

#### Flexibility

- Based on client feedback we should be able to make changes to our software


#### Cost effective

- Due to automation, less manual power has to be spent provisioning things that would usually
take a long time

#### Robustness

- if something fails we can get it up and running quickly


## What is Continuous integration

- A development practice where developers integrate code into a shared repository frequently.
It can range from a couple of changes every day or a week to a couple of changes in one hour in larger scales.

## What is Continuous Delivery

- This the stage where all of the changes and new features are pushed together so that they are in a deployable state,
ready to be pushed into production whenever necessary

- This is

## What is Continuous deployment

## Explain mutable vs. immutable infrastructure

Mutable means the ability to change
- In a traditional mutable server infrastructure, servers are continually updated and modified in place. E.g. system admins
would login in and manually change the configurations of their PC in order to run different servers. This can be unreliable and lead to
errors

Immutable means not able to change

- An immutable infrastructure is another infrastructure paradigm in which servers are never modified after they’re deployed, if we want to
make changes to our instances we will destroy them and make new ones with the new configurations

- Immutable infrastructures are more consistent and reliable. Ansible and Terraform are two tools that can be used to implement this.
When we want to make changes to our application, we will destroy and rerun our terraform script and trigger ansible to provision these new scripts
using playbooks and thus greatly reducing the chance of errors



## What is Jenkins

- Jenkins is an open source server that allows for automation of integrating Code
as well as testing it

- Jenkins itself is relatively lightweight however we can download github plugins
which would allow us to trigger jenkin builds whenever we push our code to a certain
branch (This is done using webhooks)


## What is Ansible

- An automation engine that automates cloud provisioning and configuration
management

- It frees up the time of manually configuring complicated tasks, instead freeing
up time for other tasks

- Very simple to use, we can provision multiple virtual machines using a single
playbook



## What is the difference between using docker or using a VM

-

## What is the difference between a webhook and an API

- A webhook listens out for responses, providing live data as it happens

- An API however allows apps to communication with each other but it must first
send a request to receive a response


## Explain Continuous integration in laymans terms

- So we can have multiple people trying to build one house at a time, each person is
trying to build a certain room of the house

- If everyone builds the whole room and then brings it together, we may find that
one door or one ceiling is too large and we would have to start again

- The point of CI is that we build parts of the room, then bring it all together and make sure
it all fits, if it does we can continue, if not then we would make some small changes
and try again


## Explain
