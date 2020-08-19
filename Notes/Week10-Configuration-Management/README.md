# Configuration Management :memo: :video_game:


### Contents

- [x] [Ansible](Ansible-Introduction.md)
- [x] [Why Ansible?](Ansible-Introduction.md)
- [x] [What is Configuration Management?](#what-is-configuration-management)
- [x] [Using Ansible With Vagrant](Ansible-With-Vagrant.md)
- [x] [Ansible ad-hoc Commands](Ansible-Ad-hoc-Commands.md)
- [x] [Ansible Playbooks](Ansible-Playbooks.md)
- [x] [Using an AMI to create an EC2 in Ansible](Using-an-AMI-to-create-an-EC2-in-Ansible.md)

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
