## list all running container on system

docker ps

## build command

--> -t to name it and path name . for current dir
docker build -t cik/docker-starter .

## Docker running build image locallay

docker run image-id
docker run -p exposedport:local imageid
i.e docker run -p 3000:8080 534gdgsg45w54fg4
alternative way

docker run -d -p exposePort:InternalPort --name 'container name' imagename/id

## running multiple docker images

--> configure using docker-compose.yml
docker compose up

## list all images

docker images
