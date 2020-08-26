

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
thanks to tools such as AWS cloud watch, route 53 and Nagios that are implemented in DevOps culture

- In addition, using microservices architecture as opposed to Monolithic means that
problems can be sort out and fixed much faster and scaling the software to meet traffic demand is much
easier


## How does Agile differ from DevOps

- Agile is a methodology that brings about constant iterations of a product with complete transparency
- The customer is part of the dev team, being able to give feedback after every iteration, as opposed to only at the beginning and the end
in the traditional SDLC
- DevOps however is a combination of cultural philosophies, practices and tools to increase an organisations ability to deliver a product quickly and efficiently,
- As opposed to Agile, in DevOps not only are we concerned about the production but also the operations side of the product and monitoring it to make sure it is stable
- DevOps brings into practice ideologies such as cloud computing and configuration management tools which can help improve how our application runs during development time as well
as improving the user's experience
- Agile is all about making changes to the product where necessary however DevOps is involved in end to end management of the product

## What does it take to make a good DevOps Engineer

- Good attention to detail
- Strong communication to be able to effectively collaborate with the different teams
- Go the extra mile/be determined ~ As a DevOps Engineer you can't shortcut anything,
you must work to complete the product


## What were the issues you overcame when attempting to create a microservices of your node Application

- After having successfully connected my containers to eachother I overcame an issue where database
was not seeding properly
- I immediately went into debugging mode and added an additional line of code in a script that
would seed the database for me during runtime
- This corrected the issues that I was facing and meant the application was able to run successfully


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


## What is containerisation

- Put simply, a container consists of an entire runtime environment: an application, plus all its dependencies, libraries and other binaries, and configuration files needed to run it, bundled into one package.
- By containerizing the application platform and its dependencies, differences in OS distributions and underlying infrastructure are abstracted away.

- By abstracting the whole VM this means that anyone else on any
computer can run our container, using their own kernel and OS

- This is in contrast to using VMs as the package is the whole VM which includes the whole OS of the VM.

- You package the software and all of it's dependencies into a container which runs off the hosts OS, thus making it very lightweight as it doesn't bring it's own OS
in addition to this it makes the start up time very quick


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
