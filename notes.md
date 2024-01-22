# Sharing images 

## Pushing your image to the remote

In order to chare your docker image you have to 
1. sign up on docker hub
2. create a repository named in the same name your local one
3. go to your terminal 
4. put in 
```bash
docker login 
```
command in order to login

5. If your local image is not named the same way your repo in Docker is, you can run
```bash
docker tag <old-image-name> <new-image-name>
```
this effectively creates a copy of your image with appropriate name

6. run 
```bash
docker push <imgage-name>
```
command


## Using remote images

In order to use remote images run 

```bash
docker pull <image-name>
```

!IMPORTANT note

Images are not updated automaticallt, you have to run docker pull with the image name in order to have the latest version of image used by a container
