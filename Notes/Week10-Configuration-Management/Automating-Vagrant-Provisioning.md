
# Automating All The Provisioning


- In our OS we will create a setup file that would provision our vagrant files for us

- Note that the code is explained throughout using comments

```bash
#!/bin/bash

vagrant up

scp install-all-dependencies.yml vagrant@192.168.33.12:/home/vagrant/
ssh vagrant@192.168.33.12 << EOF
sudo apt-get install sshpass -y
sudo apt-get install software-properties-common -y
sudo apt-get install tree -y
sudo apt-add-repository--yes--update ppa:ansible/ansible;
sudo apt-get install ansible -y

sudo su
cd /etc/ansible
echo "[web]
192.168.33.10 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> hosts
echo "[db]
192.168.33.11 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> hosts
echo "[aws]
192.168.33.12 ansible_connection=ssh ansible_ssh_user=vagrant ansible_ssh_pass=vagrant" >> hosts

exit
EOF


# SSH into DB VM

ssh vagrant@192.168.33.11 << EOF
sudo apt-get install sshpass -y
sudo apt-get update -y
sudo apt-get upgrade -y

exit
EOF

# SSH into web VM
ssh vagrant@192.168.33.10 << EOF

echo export DB_HOST="mongodb://vagrant@192.168.33.11:27017/posts" >> ~/.bashrc
sshpass -p 'vagrant' vagrant@192.168.33.10
sudo apt-get install sshpass -y
sudo apt-get update -y
sudo apt-get upgrade -y

exit
EOF

# Finally SSH back into our controller
ssh vagrant@192.168.33.12 << EOF

export ANSIBLE_HOST_KEY_CHECKING=False
# Copy file into our web vm
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"
# THIS RUNS OUR PLAYBOOK!!
ansible-playbook install-all-dependencies.yml

exit

EOF
```


### App and Posts running correctly


- Providing our virtual machines have been provisioned correctly, when we visit
the webpage of our private IP we would hope to see things running:

![](/images/Ansible-App-URL.png)


### App URL

![](/images/Ansible-Automated-App-Running.png)

### Fibonacci URL

![](/images/Ansible-Automated-App-Fibonacci-Running.png)


### Posts URL

![](/images/Ansible-Automated-App-Posts-Running.png)
