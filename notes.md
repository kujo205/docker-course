# Volumes

In this section Maxiimillian exaplains that we can store files in docker conatiner,
However thsese files exist as long as docker container exists

They will be deleeted permanently once we write 
```bash
docker rm 
```
command


This might be a problem once we want to rebuild an image and launch a new container based on that image


The solution for this problem is baked into docker

It's called `volumes`

Volumes - folders on the host machine, which are mapped into  docker container, 
so they can store data on host machines

Volumes persist even if a container is shut down

Containers can both read and write data from and into volumes

## How to create a volume

# Anonymuos volumes


To create a volume use 
```dockerfile

VOLUME ["folder-in-a-container"]
```
directive

This way, the files will be stored in so called anonymous volumes, managed be the docker

Once a container shuts down, the volume is deleted, you can check this volumes by typing

```bash
docker volume ls
```
command


# Named volumes

Named volumes is a better way, they are created in the `docker run` command

by specifying -v flag with `<folder-on-a-host-machine>:<folder-in-a-container>`

```bash
docker run -v feedback:/app/feedback

```

They are better since they persis the data after container is removed



# Removal of anonymous volumes,
Anonymous volumes would't be removed if you remove a container manually, 
You can remeove volumes manully by running

```bash
docker volume rm <volume_name>
```




