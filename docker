# list containers
docker ps -a

# run alpine (and start shell)
docker run -it alpine /bin/ash

# show local images
docker images

# delete an image
docker rmi -f [image]

# delete a container
docker rm [container]

# show logs for a container
docker logs [container]

# show docker version
docker version

# delete all docker containers
docker rm $(docker ps -aq)

# create a volume container
docker create -v /shared-data --name shared-data-container alpine true

# committing changes
docker commit -m "<message>" [-a "<author>"] <container> <user>/<repo>:<label>
