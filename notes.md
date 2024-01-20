Some very useful commands:
lists all running containers
```bash
docker ps 
```

lists - all the containers, including those, not running
```bash
docker ps -a
```

starts container in background (detatched mode)
```bash
docker start <container-name>
```

When we use 
```bash
docker run
```
command, it starts container in the foreground (aka attached pr blocking mode)

you can run a container in a detached mode, use -d flag

```bash
docker run -p <port-container-can-be-connected-by><port-container-listens-to> -d <container-name>
```

you can always attach to a detached container using 
```bash
docker attach <container-name>
```
command

you can see what a detached container was logging using
```bash
docker logs <container-name>
```
command


# Removing containers and images

To delete a container use 
```bash
docker rm <container-name>
```
command


!IMPORTANT note
You cannot rm a running container, use docker stop beforehand



To delete an image use 
```bash
docker rmi <image-id>
```
command


!IMPORTANT note
You cannot rmi an image, used by some container, rm the container first

## You can delete all the unused images using 

```bash
docker image prune 
```
command


# Listing all the images

You can list all images using

```bash
docker images
```

