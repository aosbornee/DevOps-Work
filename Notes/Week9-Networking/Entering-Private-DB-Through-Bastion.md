


We will first SSH into our bastion servers

```
ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@3.248.229.220
```

- Once in our bastion server, we can enter our private DB instance through port 22, thus allowing us to make any necessary downloads
- We run the following command
```
sudo ssh -i ~/.ssh/DevOpsStudents.pem ubuntu@124.11.2.59
```
Now once inside our DB we will download the dependencies
...
