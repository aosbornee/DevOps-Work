# Log of all the errors faced during week 10 tasks



#### Conflicting Node Applications

- When we try to run our application twice we may be told that the app is already in use,
running pm2 status would not show anything as we have ran the command from a different VM

- As a result we would have to run a ```grep``` command that will show us all of the commands running
for **node** or for **pm2**

![](/images/Using-Grep-To-See-Node-App.png)

- Once we close these projects we can then re run our application and it should be
listing successfully


#### NGINX Bugs

- Sometimes when downloading our NGINX, we may come across a bug in which the daemeon file
is not running correctly due to conflicting processes running at the same time

- We run the below command to rectify this:

```bash
sudo mkdir /etc/systemd/system/nginx.service.d
  printf "[Service]\nExecStartPost=/bin/sleep 0.1\n" | \
    sudo tee /etc/systemd/system/nginx.service.d/override.conf
  sudo systemctl daemon-reload
  sudo systemctl restart nginx
```


#### SSH into multiple VMs through bash script


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
