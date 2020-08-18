
# Automating All The Provisioning


- In our OS we will create a setup file that would provision our vagrant files for us

```bash

```

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
