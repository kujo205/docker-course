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

you can also remove a container after it is stop using --rm flag

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
docker image prune -a 
```
command


# Listing all the images

You can list all images using

```bash
docker images
```

You can inspect the image using 
```bash 
docker image inspect <image-id>
```


# Copying while running the container 

You can copy some files into the container from the fs or into the fs from the container, while running docker container in detached mode

In order to do this use 

```bash
docker cp <source> <destination>
```
command , e.g.

```bash
docker cp some_dummy_folder_on_my_pc/. flaky_lake:/some_folder_in_a_container
```

This effectively copies contents of `some_dummt_folder_on_my_pc` into the folder `some_dummy_folder_in_a_continer` in `flaky_lake` container



# Container and image naming

To run a container and give it a name you can use 

```bash
docker run --name <your_chosen_name> <image-id/image-name>
```

To run build an image with some specific name u can use 

```bash
docker build -t <image-name>:<tag-name>
```

Tags are useful if you want to specify the version of that image
