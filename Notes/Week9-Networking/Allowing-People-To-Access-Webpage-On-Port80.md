
 - Now that we have a fully running web app which is linked to a DB, we can now allow anybody to enter our webpage through port 80
 - In order to do this we would need to go to the security groups of our App instance and allow access from the whole internet '0.0.0.0/0' for anything on port 80


![](/images/Adding-Port80-To-Everyone.png)

- Now anyone should be able to enter through port 80


Running the following command will tell us what ports are open for the VM we
are within
```
netstat -antp
```
