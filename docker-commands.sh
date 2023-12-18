sudo apt install docker.io
sudo systemctl start docker
sudo systemctl status docker
sudo systemctl stop docker
sudo systemctl restart docker

docker -v  

docker version  

docker system info

docker images

docker build . -t dockerimagename:tab
ex: docker build . -t nginximage:1.0

docker run --name containername -d -p 9004:80 dockerimage:tag
-d is it will run the container as backgrond
-p means 9004 is port which we access from outside the docker and actuall application running on 80 which is inside of the docker.
ex:
docker run --name webs -d -p 9004:80 nginximage:1.0
docker ps

docker ps -a

docker logs containername or containerID

docker logs containername or containerID -f

docker exec -it containername or containerID bash [ this command brings you inside the container ]

docker pull

docker login
enter user name
enter password

docker pause imagename:tag

docker container inspect cotainerid or name

docker image inspect imagename
docker volume inspect volumeid
docker network inspect networkid

docker system prune

sudo chmod 666 /var/run/docker.sock
