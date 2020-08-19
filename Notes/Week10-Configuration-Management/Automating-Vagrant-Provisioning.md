
# Automating All The Provisioning


- In our OS we will create a setup file that would provision our vagrant files for us

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
As a result of this setup file, it will go into all of our VMs and make sure the dependencies are all installed
before then


- Once we are within aws controller we will try to run our playbook, however we will be prompt with a message telling us
the following

```
fatal: [192.168.33.11]: FAILED! => {"msg": "to use the 'ssh' connection type with passwords, you must install the sshpass program"
```

- As a result we must then install the following code to revert this issue:

```bash
sudo apt-get install sshpass
```

- After this we may then come across another error saying the following

```

```
- To deal with this me must export an environment variable so that we are not asked for the fingerprint check and this should all work...

```bash
export ANSIBLE_HOST_KEY_CHECKING=False
```

As i had previously forgotten to copy my app into my web server I will now run
the following command, i'll run

```
ansible web -m copy -a "src=/home/vagrant/app dest=/home/vagrant"
```

We can then run our playbook
```
ansible-playbook install-all-dependencies.yml
```
