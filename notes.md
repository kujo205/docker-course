you can start your container in an attached mode as well, simply using 
```bash
docker start -a -i <container-name>
```

command, -i stands for interactive, -a stands for attached

you can also run your container in the interctive mode using

```bash
docker start -ti <container-name>
```

-i stands for intercative
-t stands for allocate pseudo-TTY aka terminal 


# To see all the options you can use --help flag in any docker command
