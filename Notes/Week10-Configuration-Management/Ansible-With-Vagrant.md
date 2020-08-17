# Ansible With Vagrant


Defining a Communication between the servers

We have created three Virtual Machines from our Vagrant File


### We will make our VM named aws our controller, in this controller we will:

- Install Ansible
- Look at the file system of ansible
- Create host entries, tell the controller which IP to communicate with for the other
two machines

### Installing Ansible On Our AWS Controller VM

```bash
sudo apt-get install software-properties-common -y
# We are downloading a source code from github that has the necessary installations for ansible
sudo apt-add-repository ppa:ansible/ansible
# Now we can install anisble
sudo apt-get install ansible -y
```

- Tree is a package manager that lists all of our packages in a nice way
```bash
sudo apt-get install tree
```

We can then check for the version to ensure we have ansible installed
```bash
ansible --version
```

We can find our Ansible default location via this path

```bash
cd /etc/ansible
```

When we run ```tree``` it will lists our files and configurations nicely

![](/images/tree-ansible.png)


We will then try to ping one of our other vm's from our controller, this will not
work as we have not created an SSH connection between our aws controller and our other
virtual machines

```bash
ansible all -m ping
```

![](/images/unable-to-ssh-to-other-VMs.png)

#### Creating the entries

- Now we are going to add these entry points so we can enter other VMs from our
controller

```bash
sudo nano hosts
```
And paste the following code:

```bash
[web]
192.168.33.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant
[db]
192.168.33.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant
#[aws]
#192.168.33.12 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant
```
- We have created a
- We have commented out of the controller because we do not need to SSH into it

#### Entering App and DB

```bash
ssh vagrant@192.168.33.10
```
- We will then be prompt to enter our password which we set to **vagrant** and we
we will then be in our web virtual machine

![](/images/successfully-entering-web-from-controller.png)
