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

## Build arguments

There is other type of variables in docker, these are called build-args

You can have a build arg in your Dockerfile by specifying it in the following way

```Dockerfile
ARG <arg-name>=<arg-value>
```

And then you can use your build args by prepending $ before a build arg, e.g.

```Dockerfile
ENV PORT $DEFAULT_PORT
```

you can specify build arguments in the docker run command like this

```bash
docker run --build-arg DEFAULT_PORT=8000 <some-container-name>
```

You can specify multiple build args

## Dockerignore

Alike to gitignore, it tells docker which filed not to include to the image

You'll often see there things like .env files, node_modules etc.
