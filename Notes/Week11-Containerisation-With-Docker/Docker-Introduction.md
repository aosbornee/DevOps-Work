# What is Docker

Docker is a containerisation platform and can easily operate with any OS.
talking to each other through rest-api's

It creates containers, networks and host images

- Docker images are much smaller than VMs
Easily adopted and configured
much quicker to start up

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
