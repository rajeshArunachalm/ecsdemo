# docker-Java-kubernetes-project
Deploying Java Applications with Docker and Kubernetes

pre:
openjdk 11.0.19
Apache Maven 3.6.0
Docker version 24.0.2
docker hub account and repositories

shopfront , productcatalogue and stockmanager folders are the front-end and backend

Go to each Module and generate jar's first.

cd shopfront
mvn clean install
docker build . -t dockerimagename:tag
docker login
docker push dockerimagename:tag

cd../productcatalogue
mvn clean install
docker build . -t dockerimagename:tag
docker push dockerimagename:tag

cd../stockmanager
mvn clean install
docker build . -t dockerimagename:tag
docker push dockerimagename:tag

1.First build the docker files for respective modules and push to dockerhub

2.kubernetes folder containes yml files, configure docker images properly and run one by one.
	$ cd kubernetes
	$ kubectl apply -f shopfront-service.yaml
	$ kubectl apply -f productcatalogue-service.yaml
	$ kubectl apply -f stockmanager-service.yaml
3.check the Deployments , pods and service.

$ kubectl get deployments
$ kubectl get pods
$ kubectl get svc

4.Browse url's

front-ent : http://loadbalancer

productcatalogue and stockmanager are just end points to serve from frontend.

productcatalogue: http://loadbalancerip/products

stockmanager: http://loadbalancerip/stocks

