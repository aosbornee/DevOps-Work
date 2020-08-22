# Ansible Ad-hoc commands

- Ad-hoc commands are quick and easy, but they are not reusable
- They are great for tasks you repair rarely

E.g. If we wanted to turn off our servers over the holiday period and did not want
to create a playbook we could just run the following ad-hoc command:

```bash
ansible [pattern] -m [module] -a "[module options]"
```

- Ad-hoc commands are easy, fast and flexible, we can find out huge amounts of information just by running ah-hoc commands from our controller

#### Running Commands in our gitbash

```bash
ansible web -a "date"
```

- This will tell us the UTC time our web virtual machine


###### Checking Operating System Of server
```bash
ansible db -a "uname -a"
```
- This file will tell us the name of our database operating system

##### Listing All Our Folders
```bash
ansible all -m shell -a "ls -a"
```

- This command will run in all of our servers and show us all the files in the virtual

##### Checking Storage Of Folders

```bash
ansible all -m shell -a "free"
```
 - This command will tell us the amount of free storage in all our Virtual Machines

##### Managing Files

```bash
ansible web -m copy -a "src=/etc/ansible/provision.sh dest=/home/vagrant"
```

- Here we have copied a provision file we have created in our controller and placed it into our web virtual machine

- We can see that our provision.sh file is now in our web virtual machine

![](/images/copying-file-to-web-with-ansible.png)


##### Rebooting servers

```bash
ansible atlanta -a "/sbin/reboot"
```

#### USB Controllers

```bash
ansible all -a "lsblk"
```
- This is used to report information about USB controllers and all the devices that are connected to them.

#### System Info
```bash
ansible all -a "sudo dmidecode -t system"
```
- This command is used to print information about the system

##### IP Addresses

```bash
ansible all -m shell -a "hostname -I"
```
- This returns the public and private IP of all our VMs

#### Exercise
```
ansible all -m setup
ansilbe all -a "df -h"
ansible all -a "uptime" # uptime
ansible all -m shell -a 'mpstat -P ALL'
ansible all -m shell -a 'free -m'
```
