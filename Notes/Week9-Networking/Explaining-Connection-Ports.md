# Different Networking Connection Ports




## Understanding CIDR blocks

/32 means that we are only allowing a specific IP to enter, this means every
single number will be checked


When creating a VPC we create /16, this means that any IP that matches the first
two octets belongs to that VPC

In our subnets e.g. we use /24

Subnets belong to VPC, subnet that belong to a VPC would match the first two octets of the VPC
and the third block would be a unique identifier for the subnet

Why do we use the /24 after the subnet Ip

- The /24 is saying that only the first three octets are relevant

## Ephemeral Ports


## HTTP

- Stands for **Hypertext Transfer Protocol**, it usually connects through port 80
to send and receive data packages over the web

## HTTPS

- Stands for **Hypertext Transfer Protocol Secure**, thus being a more secure connection
- Most sites have a redirect that even if you enter HTTP, it redirects to
HTTPS
- For HTTPS, data is encrypted before being sent

- HTTPS connects through port 443

- Cloudfare monitors the connections on port 443 and has created a verified
lists of websites
