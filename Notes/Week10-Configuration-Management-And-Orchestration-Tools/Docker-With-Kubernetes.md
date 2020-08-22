# Docker With Kubernetes

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

## What is kubernetes

## Why kubernetes

- Is adopted by all major cloud providers
- means pilot, google have been running it for 15 years before giving it to open source
- kubernetes manages the behaviour of all our containers, telling it to autoscale at certain points
- Kubernetes manages up to 70% of Docker containers, dominating the container orchestration market


## Kubernetes in application

![](/images/kubernetes-ports.png)

- Self healing, when something goes wrong our port gets deleted and a new one is spun up at the
same location with the same IP

-

So if the third server goes down, the load will balanced between the other two. Meanwhile docker
will self heal the third server by destroying it and re running it with the same IP


Create the container
```

```

To run the app
```
docker run -p 3000:3000 "name_of_image"
```

- So in two simple commands we are able to create and run our docker containers


```
kubectl autoscale deploy sparta --cpu-percent=50 --min=1 --max=9
```
- This is autoscaling and horizontal port scaling

- When we go to sleep we have told k8 that when one server reacehs 50% cpu then spin up
another container


# STAR for why use K8

We created a node app with a web framework using express, then put this in a docker container.
The question now is how do we want this container to behave? Docker cannot do this but kubernetes can.
This means that we have containers deployed in k8 which can then self heal and autoscale, thus our container doesn't go down due to excess traffic


## Why use containerisation if we can just use k8

- We create three sperate containers, frontend, backend and DB and then
these containers are deployed on docker with the specified behaviours

- Docker swarm and docker compose can manage these behaviours but the market share is
heavily in k8
