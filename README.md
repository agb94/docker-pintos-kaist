# docker-pintos-kaist

## Prerequisite
 - Install [Docker Desktop](https://docs.docker.com/desktop/)!

## Getting Started
If you're using Linux OS, I recommend you to do this in a tmux session.

```bash
docker build --tag pintos:latest . # Build a docker image
docker run -dt --name pintos pintos:latest # Run a container using the image
docker exec -it pintos bash # Execute bash shell in the container
```
This will build the docker image and start a container.

You can use this container instead of VM (only when your VM is not working).

Note that this is just a tentative solution and NOT FULLY TESTED.

```bash
# In the docker container
cd ~/pintos-kaist
# maybe you need to setup your repo & user info in .git/config
```

## Troubleshooting
### Did you restart your computer?

```bash
docker start pintos
docker exec -it pintos bash
```
