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

- Another error occured where...
