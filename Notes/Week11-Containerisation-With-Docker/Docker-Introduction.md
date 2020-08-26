


## What is containerisation

- Put simply, a container consists of an entire runtime environment: an application, plus all its dependencies, libraries and other binaries, and configuration files needed to run it, bundled into one package.
- By containerizing the application platform and its dependencies, differences in OS distributions and underlying infrastructure are abstracted away.

- By abstracting the whole VM this means that anyone else on any
computer can run our container, using their own kernel and OS

- This is in contrast to using VMs as the package is the whole VM which includes the whole OS of the VM.

- You package the software and all of it's dependencies into a container which runs off the hosts OS, thus making it very lightweight as it doesn't bring it's own OS
in addition to this it makes the start up time very quick

## What is a Kernel

## What is a hypervisor

- What allows us to create virtual machines

# What is Docker

Docker is a containerisation platform and can easily operate with any OS.
talking to each other through rest-api's

- Docker shares the host OS to run our containers instead of creating a whole other
operating system on top of our own OS

- This is what allows Docker to run much faster

- Docker images are much smaller than VMs
Easily adopted and configured
much quicker to start up

## How is Docker lightweight

- Docker shares the memory of an OS, creating an entire virtual environment that
only runs the application it has been built to run
- As opposed to VMs where we can run an app and do other things

- This means that Virtual Machines and operating systems can run together, where
we can create an EC2 instance and run multiple containers on it


#### Docker Client

- This is our local host

#### Docker Daemon/Engine

- This is situated on our operating system
- Docker engine is responsible for running processes in isolated environments.
- For each process, it generates a new Linux container, allocates a new filesystem for it, allocates a network interface, sets an IP for it and then runs processes inside of it.

- It also manages such things as creating, removing images, fetching images from the registry of choice, creating, restarting, removing containers and many other things. Docker engine exposes the rest API which can be used to control the daemon.


#### Docker Registry

## Why Docker

We ask docker to pull an image for us, the request will then go to docker host
and look for the image, if it can't find it will go do a registry to find it,
this is all done in seconds

50% of companies have docker contained

## Docker commands

```
docker run -d -p 80:80 docker/getting-started
```

You'll notice a few flags being used. Here's some more info on them:

- ``-d`` - run the container in detached mode (in the background)
- ``-p`` 80:80 - map port 80 of the host to port 80 in the container
- ``docker/getting-started`` - the image to use
