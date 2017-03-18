# Docker

## General stuff

### List all containers

```sh
docker ps -a
```

### Run Alpine (latest) and starting shell

```shell
docker run -it alpine /bin/ash
```

### Run Container in background

```shell
docker run -d <image>
```

### Show local images

```shell
docker images
```

### Pull an image or repository

```shell
docker pull <image or repo>
```

### Delete an image

```shell
docker rmi -f <image>
```

### Delete a container

```shell 
docker rm <container>
```

### Show logs for a container

```shell
docker logs <container>
```

### Show docker version

```shell
docker version
```

### Delete all docker containers

```shell
docker rm $(docker ps -aq)
```
### Delete all images
```shell
docker rmi $(docker images -q)
```

### Commit changes

```shell
docker commit -m "<message>" [-a "<author>"] <container> <user>/<repo>:<label>
```

### Run new container, specifying to restart on system boot

```shell
doker run --restart=always <image> [command]
```

### Update existing container to start on system boot

```shell
 docker update --restart=always <container>
```

### Get IP of container
```shell
docker inspect -f "{{ .NetworkSettings.Networks.nat.IPAddress }}" <container>
```

## Working with volumes

### Create a volume container

```shell
docker create -v /shared-data --name shared-data-container alpine true
```

### Create a container using volumes from a volume container

```shell
docker run [-ti] --volumes-from <volume container> <image> [command]
```
