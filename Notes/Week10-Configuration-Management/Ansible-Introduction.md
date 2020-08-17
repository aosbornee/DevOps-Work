

## Infrastructure As Code


We can have up to 100 servers running at a time, there are some specific tasks that
run at specific times in specific places

- Using YAML in ansible, we can define all of the provisions of each of our server
within one playbook, this saves us time manually going into a VM and making these
changes separately


- To help speed up the process of configuration management, we use tools such as
Ansible and Terraform



## Ansible

- An automation tool that automates cloud provisioning and configuration
management


#### Benefits Of Ansible

##### Simple
- Configurations can be made in 100s of servers using a single playbook), also uses connection through SSH

##### Agentless
- As long as the controller has Ansible installed, we do not need to install Ansible within our servers

##### Cost Effective
- Reduces any chances of errors, thus keeping the server up and running constantly)

##### Time Efficient
- Saves Time (Less time has to be spend on manual tasks, speeding up the process)

## Hybrid Cloud

- This is a cloud computing environment that uses a mixture of on-premises, private cloud
and public cloud services and orchestration between them all

- Our controller would be on AWS, our app could be on our local PC and our Database
could be on Microsoft Azure

- Ansible makes this easy by creating playbooks that can access each machine simply
for us
