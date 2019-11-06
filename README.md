# Simple Docker Build Example for DevOps Guild

A simple example of how Docker can build an image, run it and shut it down.
In addition, this includes a simple example pipeline.

Ensure you have installed Docker on your PC/Mac.

Instructions on how to install Docker on Windows are here:
https://docs.docker.com/docker-for-windows/install/

For Ubuntu Linux users, refer to this:
https://docs.docker.com/install/linux/docker-ce/ubuntu/

For Centos or RedHat Linux, see here:
https://docs.docker.com/install/linux/docker-ce/centos/

For Macintosh users, see here:
https://docs.docker.com/docker-for-mac/install/

You will also need to download 'docker-compose'. Installation
instructions and links are here: https://docs.docker.com/compose/install/

Addendum: Kubernetes

Included are the yaml files to create the nginx container in an orchestrated (K8s) environment.
The command to bring this up - after ensuring your ~/.kube/config file has been copied from the
master server - is:
kubectl create -f nginx-deployment.yaml 

Next, to run the associated service, run the following:
kubectl create -f nginx-service.yaml 

Observe that the nginx deployment and service are running:
kubectl get all

To scale the number of instances from one to two, do:
kubectl scale deployment.apps/nginx --replicas=2

Run the following to observe the number of nginx pods now in service:
kubectl get all

