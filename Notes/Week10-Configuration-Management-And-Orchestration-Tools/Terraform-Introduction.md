
Ansible cretes AMI's for us and we can then create EC2s using terraform, and with
terraform we can change subneets, security groups, VPCs etc

Ansible - configuration management tool
Terrafomm- Orchestration tool


Macro vs Microsoft


Terraform sets up the infrastructure we need and ansible works within  the infrastructure (VMs)
, configuring the environment to the correct state so the application can effectively run


before Ec2 we would have physical servers and our IT specialist would set up the changes
making changing within the same server

On top of taking a long time, we also have an inconsistent enviroment as its' done mnaually, meaning is less freliable as there is
space for human error.

With immutable infrastructure, wants its created we dont go into it and change it, this is terraform, if we want to make changes we
simply destroy the server and create a new one


When we run our terraform and ansible scripts we will have the same configurations as the IaC has remained
completely the same, this is how we create consistent development environments


cloud computing is more effective at scale out  as we can easily spin us new EC2 as oppsoed to buying
additional pc's, it is also better for scaling up as we can just change our EC2 from a micro to a large where required
