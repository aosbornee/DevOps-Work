# Ansible Playbooks

## What are they


- Playbooks are written in YAML format (Yet Another Markup Language)

- Each playbook is composed of one or more 'plays' in a list

- These will also run in our Ansible controller


## Why use playbooks over simpler ad-hoc commands

-With one playbook we can install Nginx into 50 servers

- We can also specify, install mongo in our db., install Nginx in our web VM,
and then update all of these installations


## Creating a playbook

- Once in the /etc/ansible file path, we will create a file

```bash
sudo nano install_nginx_on_web.yml
```

**Then input the following:**
```bash
# This is a YAML file to install nginx onto oue web VM using YAML
---

# where do we want to install
- hosts: web

# get the facts
  gather_facts: yes

# changes access to root user
  become: true

# what do we want ansible to do for us in the playbook
# In this case our only task is to install nginx

  tasks:
  - name: Install nginx

# telling ansible to stall the nginx package in the present state
# there are three states, present/absent and ...
    apt: pkg=nginx state=present
```

- The three lines at the start of our file is us telling ansible that we are running
a YAML file

- Note each installation will need its own task

The command to run ansible playbook is
```bash
ansible-playbook name_of_file
```

So in our case:
```bash
ansible-playbook install_nginx_on_web.yml
```

If successful we should see the following result

![](/images/ansible-playbook-working.png)



```bash
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"

```


### Running Posts Using A Playbook

- First we will copy our app folder into our web app

```bash
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"
```

- Then ssh into our web virtual machine
```bash
ssh vagrant@192.168.33.10
```

Once in our web virtual machine we can then upgrade npm and run our npm install
to download our dependencies necessary to run the app

```
cd app
sudo npm install -g npm
npm install
```

We can now run ```node app.js``` and our app should be listing on port 3000

![](/images/Running-Ansible-App-on-3000.png)
