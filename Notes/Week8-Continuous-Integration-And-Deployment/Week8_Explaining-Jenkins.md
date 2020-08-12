# Jenkins

## What is Jenkins?

- Put simply, Jenkins is an open source automation server
- Jenkins is used to build and test software projects continuously, this makes it easier for developers to integrate code
as changes are made through small incremental steps
- If any errors are found when Jenkins tries to build our project, the build will fail and the developer would be
altered immediately
- If the build is successful, the project can be placed in the Delivery Phase

- As default Jenkins comes with limited features however it has over 1000 plugins, version controls such as git as well
as integration tools like Maven must be installed to use

![Here](https://github.com/aosborne17/Web-App-Starter-Code/raw/master/images/jenkins-integration-life-cycle.png)


## Why use Jenkins?
- Easy to detect bugs as tests are run after each commit
- Automated testing and building means more time can be spent on improving the software quality
- Automated processes also mean companies can be more reactive to customer feedback, increase customer satisfaction


## Continuous Integration with Jenkins

![Jenkins Deploy](https://github.com/aosborne17/Web-App-Starter-Code/raw/master/images/jenkins-build-test-deploy.png)

- Developer commits to the shared repository
- Jenkins detects the changes and pulls the code to prepare a build
- If the build fails, the developer would be notified
- If the build is successful, Jenkins will deploy the test server
- Providing the tests pass, the application can be moved to the deployment stage, if not the developer is sent feedback
- Jenkins server continues to check the shared repo for changes
