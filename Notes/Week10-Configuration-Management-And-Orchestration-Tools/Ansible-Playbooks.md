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



#### Automating This Process Using Our Playbooks

- We will go back to our controller and add the following code to our YAML file
to automate the process

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
    apt: pkg=nginx state=present

# Creeating our reverse proxy
# Allows our app to run on port 80 as opposed to 3000
  - name: nginx reverse proxy
    shell:  |
      sudo unlink /etc/nginx/sites-enabled/default
      cd /etc/nginx/sites-available
      sudo touch reverse-proxy.conf
      sudo chmod 666 reverse-proxy.conf
      echo "server{
        listen 80;
        server_name development.local;
        location / {
            proxy_pass http://127.0.0.1:3000/;
        }
      }" >> reverse-proxy.conf
      sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf
      sudo service nginx restart


    - name: Install Nodejs
      apt: pkg=nodejs state=present

    - name: Install npm
      apt: pkg=npm state=present


# Downloading pm2
    - name: Install pm2
      npm:
        name: pm2
        global: yes


    - name:
      shell: |
        cd app
        sudo npm install -g npm
        npm install
        pm2 stop all
        pm2 start app.js -f

```

- Before running our YAML file we can check the syntax of our YAML file using this command:
```bash
ansible-playbook install-app-dependencies.yml --check
```

- We will then run our YAML file:
```bash
ansible-playbook install-app-dependencies.yml
```

- This would allow our app to run within our web instance without the need to
enter it

- In addition, thanks to the reverse proxy our app will run on port 80


![](/images/Ansible-playbook-run-app.png)
