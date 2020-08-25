# Networking :computer: :cloud:

### Contents


- [x] [Ansible](Ansible-Introduction.md)
- [x] [Why Ansible?](Ansible-Introduction.md)
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
- [x] [What is a DNS](#Domain-Name-System)
- [x] [Common Networking Ports](#Common Networking Ports)






### Domain Name System

- Stands for Domain Name System
- Computers communicate with each other via IP Addresses which are long numerical patterns, not user friendly at all
- DNS is used to transfer an actual name such as example.com into those numerical patterns (192.23.34.1)
- URLS have a ‘.’ at the end which we do not see, this dot refers to the root of the internet’s name space


### Common Networking Ports

- **Ephemeral ports** The default ephemeral port numbers are in the range 1024 – 65535.
An ephemeral port is a short-lived transport protocol port for Internet Protocol (IP) communications.
Ephemeral ports are allocated automatically from a predefined range by the IP stack software

- **Port 80** is associated with HTTP, Hypertext Transfer Protocol The main purpose of port 80 is to allow the browser to connect to the web pages on the internet.
Port 80 basically expects or waits for the web client to ask for a connection.

- **Port 443** HTTPS port 443 also lets you connect to the internet by establishing a connection between the webpages and the browser.
This lets you connect to the World Wide Web. However, this port has an added feature of security to it, which HTTP port 80 does not have.

- **Port 22** is associated with SSH.

- **Port 53** DNS is referred to as 'Domain Name System'. It operates on the port 53. DNS makes use of relational databases to link the host names of the computers or networks to their respective IP Addresses. The port 53 waits for requests from DHCP to transfer the data over the network. It operates on the Application Layer of the TCP/IP Model.

- **Port 27017**
