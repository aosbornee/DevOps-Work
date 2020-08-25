
## What is a VPC

- A virtual private cloud is an isolated private cloud which is hosted within
a public cloud, in order for this VPC to use internet it must travel through an-+

internet Gateway

- A VPC closely resembles a traditional network inside a datacentre however with
AWS we benefit from scalable infrastructure to meet demands

-


## What are the benefits of using microservices as opposed to standard monolithic architecture?


- N-Tier Architecture (or Multi-tier Architecture) is all about having all of your different functions within a software
e.g. (data, presentation, processing) physically and logically separated.

- When you work on one section, the changes will not affect the other functions
of the software.

- If there is a problem it is much easier to locate as opposed to traditional
monolithic Architecture

- You can secure each of the three tiers separately using different firewall settings,
this has been implemented in the VPC that we will create soon

- It offers scalability, if we need to add more resources, it can be done per tier without
the need to effect other tiers

- Reusability, we can take a tier from one project and implement it onto another project without
the need to remake the whole tier again, thus saving time
