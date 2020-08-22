# Installing Mongodb onto our Database

- We will now make changes to our playbook to allow our app to receive information
from our database, which will then allow us to run Posts

- This is beneficial as installations to both of our VMs can be configured through
the usage of a single playbook which has huge benefits

- Our YAML file will look as such:

```bash
# This is a YAML file to install nginx onto oue web VM using YAML
---

# Entering our database VM
- hosts: db

  gather_facts: yes

# Becoming root user
  become: true

# Declaration of tasks to perform
  tasks:
  # installation of mongodb
    - name: Installing MongoDB
      apt: pkg=mongodb state=present

    # Configuring the mongodb file in order for it to run
    - name: Adding New configurations to mongod.conf file
      shell: |
        sudo rm /etc/mongodb.conf
        sudo touch mongodb.conf
        sudo chmod 666 mongodb.conf
        cd /etc
        # echoing commadns into our mongodb file
        echo "# mongodb.conf

          storage:
            dbPath: /var/lib/mongodb
            journal:
              enabled: true

          systemLog:
            destination: file
            logAppend: true
            path: /var/log/mongodb/mongod.log

          net:
            port: 27017
            bindIp: 0.0.0.0" >> mongodb.conf
         sudo systemctl restart mongodb


# Now doing installation on our web VM
- hosts: web

# get the facts
  gather_facts: yes

# changes access to root user
  become: true


# Declaration of tasks
  tasks:
  # installing nginx
  - name: Install nginx
    apt: pkg=nginx state=present

  # Configuring reverse proxy file to allow our app to run on port 80
  - name: nginx reverse proxy
  # this is how we declare a shell script
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
      # restarting nginx to ensure changes have taken place
      sudo nginx -t
      sudo systemctl restart nginx

  # installing nodejs
  - name: Install Nodejs
    apt: pkg=nodejs state=present

  # installing npm
  - name: Install npm
    apt: pkg=npm state=present


# Downloading pm2
  - name: Install pm2
    npm:
      name: pm2
      global: yes


# Use shell commands to run our web VM
  - name: Running App On Web Virtual Machine
    shell: |
      cd app
      sudo npm install -g npm
      npm install
      node seeds/seed.js
      pm2 stop all
      pm2 start app.js
    # creating an ENV variable so our web VM can connect with our db to load posts page
    environment:
      DB_HOST: mongodb://vagrant@192.168.33.11:27017/posts

```

- This has drastically cut down the time of our previous provisionings, we no longer
need to manually SSH all over the place and go into files to do tasks, the YAML
file does it all



### Using Templates In Ansible

- The above file that we have created can be made much more efficient by using Templates

- Templates are beneficial as they allow us to replicate the code we have used and place it into
other YAML files where necessary, thus the code is reusable


- As we can see with the code below, we have implemented

```bash
# This is a YAML file to install nginx onto oue web VM using YAML
---

- hosts: db

  gather_facts: yes

  become: true

  tasks:
  - name: install mongodb
    apt: pkg=mongodb state=present

  - name: Remove mongodb file (delete file)
    file:
      path: /etc/mongodb.conf
      state: absent

  - name: Touch a file, using symbolic modes to set the permissions (equivalent to 0644)
    file:
      path: /etc/mongodb.conf
      state: touch
      mode: u=rw,g=r,o=r


  - name: Insert multiple lines and Backup
    blockinfile:
      path: /etc/mongodb.conf
      backup: yes
      block: |
        "storage:
          dbPath: /var/lib/mongodb
          journal:
            enabled: true
        systemLog:
          destination: file
          logAppend: true
          path: /var/log/mongodb/mongod.log
        net:
          port: 27017
          bindIp: 0.0.0.0"


```
