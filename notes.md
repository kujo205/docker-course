# Volumes

In this section Maxiimillian exaplains that we can store files in docker conatiner,
However thsese files exist as long as docker container exists

They will be deleted permanently once we write 
```bash
docker rm 
```
command


This might be a problem once we want to rebuild an image and launch a new container based on that image (1)


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

## Bind mounts

Bind mounts are also related to Docker, they solve the problem when you have to rebuild the image all the time in order to have the latest code running in your container, to enable bind mount you can also use `-v` as for volumes, the only difference is that you have to specify an absolute path to the folder on your pc and an entire folder, which your docker is using to build

```bash
docker run -d -v /home/kujo205/WebstormProjects/docker-course:/app --rm -p 3000:80 --name bind_mount demo4:latest
```

let's check it's running

```bash
 kujo205@debian  ~/WebstormProjects/docker-course   demo4 ±  docker ps   
CONTAINER ID   IMAGE          COMMAND                  CREATED          STATUS          PORTS                  NAMES
9fcba85f9394   demo4:latest   "docker-entrypoint.s…"   23 seconds ago   Up 22 seconds   0.0.0.0:3000->80/tcp   bind_mount
```

But what docker chooses if we have some files both in our bin volume and host-machine, 
DOcker wouldn't overwrite you local files, it overwrites files in docker

You can easily tell docker which files to not overwrite by specifying an anonymous volume with the path in a container which you want to keep, e.g.

```bash
docker run -p 3000:80 -v /home/kujo205/WebstormProjects/docker-course:/app -v /app/node_modules --rm -d --name bind-mount-and-anonymous-volumes demo4:latest
```

## Disabling changing files in a container

You can easily modify the command above to allow read-only access to a container, this is done by addding `ro` at the end of the container

```bash
docker run -p 3000:80 -v /home/kujo205/WebstormProjects/docker-course:/app:ro -v /app/node_modules --rm -d --name bind-mount-and-anonymous-volumes demo4:latest
```

Yet, if you want some parts of your container to be wrirtable, simply put em in an anonymous container or a couple of anonymous containers

## How to see more details about the volume

In order to see details about the volume you can run 

```bash
docker volume inspect <volume-name>
```

this will list something like 

```bash
kujo205@debian  ~/WebstormProjects/docker-course   demo4  docker volume inspect feedback
[
    {
        "CreatedAt": "2024-01-23T13:27:56Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/feedback/_data",
        "Name": "feedback",
        "Options": null,
        "Scope": "local"
    }
]
```

It's important to note that the path or `Mountpoint` specified in this system is not a path in your machine, but a path in a virtual machine, which docker uses under the hood


## Environmental values

You can pass env values to the docker container, in order to do that use the following syntax in your docker file
```Dockerfile
ENV <VARIABLE_NAME> <DEFAULT_VALUE>
``` 

The next question you may ask is how to pass those variables to the container itself, well, it's easy, 
You need to specify long option `--env` and the `variable` with the `value`.
Like in the following code

```bash
docker run --env PORT=8000 <some-container-name>
```

or use the shortcut version

```bash
docker run -e PORT=8000 <some-container-name>
```


Besides this you can specify env file, the syntax is the following

```bash
docker run --env-file <path-to-env-file> <some-container-name>
```


