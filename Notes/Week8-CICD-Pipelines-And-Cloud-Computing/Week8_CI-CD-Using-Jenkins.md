
## removing the remote origin on the repository

    We want to remove the remote and add our own remote, thus we can point it to our own repository
    ```commandline
    git remote rm origin
    ```

    Now when we run ```git remote --v```, there shouldn't be any remote's

    We will now make a repo from which we will have this folder point to, after we have created the repo we run the following
    command
    ```commandline
    git@github.com:aosborne17/Node-App-Pipeline.git
    ```

    or for http we could run
    ```commandline
    git remote set-url origin https://github.com/aosborne17/Node-App-Pipeline.git
    ```

    We can now push to github
    ```commandline
    git push -u orgin master
    ```

## Continuous Integration With Jenkins

- The first Jenkins job will listen to any pushes that are made to a dev branch on our github repository, this is made
possible due to the addition of webhooks that will constantly listen to any requests

- Once a push has been made, the Continuous integration job will try to build the code, test it and providing this passes, the
code will be will merged into the master branch

For this configuration the '*' works as a placeholder, this means that as long as the branch starts with 'dev' then it
will listen to these branches

![CI Configurations GIF](images/CI-Configuration-job.gif)



## Continuous Deployment With Jenkins

- The second Jenkins job will only run providing the first has built successfully, this was done by adding this configuration

![](images/Build-only-if-CI-completes.jpg)

- Thus once the CI job has been completed, the role of the Continuous deployment job is to then take the new code and deploy
live on a web server through accessing our AMI's 

- In order for our Jenkins Agent to access our AMI, we will need to provide it with an SSH agent that is also recognised
by the AMI, otherwise we would not be able to enter

![SSH-Agent](images/SSH-Agent.png)


- Commands that have been done in the Execute shell shows how Jenkins would automatically enter our instance and run the
app post changes, acting similarly to our own ``` setup.sh ``` bash script


Inside the execute shell we add the following commands: 

```commandline
# '-r' stands for recursive, this tells scp to recursively copy the source directory and its contents
scp -o "StrictHostKeyChecking=no" -r app ubuntu@54.247.55.44:/home/ubuntu
scp -o "StrictHostKeyChecking=no" -r environment ubuntu@54.247.55.44:/home/ubuntu
ssh -o "StrictHostKeyChecking=no" ubuntu@54.247.55.44 <<EOF
    # Here we are running our provision.sh which will download all the dependencies necessary to run our app	
    sudo bash ./environment/app/provision.sh
    # Now we can cd into our app folder
    cd app
    # Kill any apps that are currently running
    pm2 kill
    # Then run our application
    pm2 start app.js
    
EOF
```

- Once this job has completed, we should be able to see the changes we have made appear on a web browser

### All the configurations needed for this job can be seen here

![](images/CD-Configuration-job.gif)


## Allowing Inbound Access from Jenkins Server To our AMI

- In order for the Jenkins Agent to interact with our AMI, we must also allow it in our inbound rules of our APP instance
which can be done in the security groups section

![](images/Inbound-Access-SSH.png)

- Here we have added an SSH port 22 connection, we are using 0.0.0.0 because this means we are allowing everyone in,
including the jenkins server that we are working with

- Once this has been completed we can now make a change on one of our dev branches and hope to see these changes take place
live
