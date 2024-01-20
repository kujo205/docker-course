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

