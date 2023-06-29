#   Face-Detection-Minor
This is a Django project which is developed to detect the face by uploading the image.
We can run this Application in different ways as defined Below - 

## Deployment using - python3 manage.py runserver

To deploy this project locally 1st clone this repo using 
```bash
  gh repo clone nakuldesai21/Face-Detection-Minor1
```
create a virtual env on your local machine and execute the following commands
```bash
   - python3 -m venv virtual_env_name
   - source first_env/bin/activate
   - cd Face-Detection-Minor1/
   - pip install -r requirements.txt 
   - python3 manage.py runserver
```
Now you can check your Application on http://localhost:8000/

----------------------------------------------
## Deployment using Docker container
## pre-requisite
To Install Docker
- apt update
- apt install docker.io -y

To deploy project using DockerFile use following command
```bash
  - gh repo clone nakuldesai21/Face-Detection-Minor1
  - cd Face-Detection-Minor1
  - docker image build -t <image_name> DockerFile
  - docker images ls
  - docker run -p 8000:8000 <image_name> 
  - docker ps
```
Now you can check your Application on http://localhost:8000/

## Deployment using docker-compose
## pre-requisite
To Install Docker and docker-compose
- apt update
- apt install docker.io -y
- curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
- chmod +x /usr/local/bin/docker-compose

To deploy project using Docker-compose file use following command
```bash
  - gh repo clone nakuldesai21/Face-Detection-Minor1
  - cd Face-Detection-Minor1
  - To start Application in foreground
     docker-compose up
     OR
    To start Application in background
     docker-compose up -d
  - To list the containers created by docker-compose
    docker-compose ps
```
Now you can check your Application on http://localhost:8000/

--------------------------------------------------
## Deployment using kubernetes replicaset object
## pre-requisite
To deploy this Application using kubernetes-replicaset you must have some of the basic pre-requisite on your localhost 

(`` Note `` - You can use KIND or Minikube for Creating a cluster in this example we have used KIND(K8S) cluster)

1) Docker must be installed in the system.

You can install docker using the below command 
```bash
  apt update
  apt install docker.io -y
```
2) Setup kubernetes cluster (K8s cluster) in the local environment
  If you plan to setup a local K8s cluster on your system for learning and testing, please use one of the below options based on your operating system.
  ### Installing kubectl client
The Kubernetes command-line tool, kubectl, allows you to run commands against Kubernetes clusters.

```bash
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
sudo apt-get install -y  kubectl
```
### kind

KIND is a tool for running local Kubernetes clusters using Docker container runtime

To install and create KIND cluster as per your OS use below link - 
```
https://kind.sigs.k8s.io/docs/user/quick-start/#installation  
```
### some of the basic commands To use Kind cluster

#### Creating a Kubernetes cluster is as simple as here "kind" is default cluster name.

 ``` kind create cluster ```

#### If you want to create customezied name for your cluster use below command

``` kind create cluster --name <cluster-name> ```

#### To list the cluster

``` kind get clusters ```

#### If you want to work with specific cluster you have to just specify the cluster name as context in kubectl- 

```kubectl cluster-info --context kind-kind-2 ``` 

#### To delete kubernetes cluster

If the flag --name is not specified, kind will use the default cluster context name kind and delete that cluster.

``` kind delete cluster ``` or ``` kind delete cluster ```

### Minikube

Minikube is local Kubernetes, focusing on making it easy to learn and develop for Kubernetes

#### Prerequisite
Docker (or similarly compatible) container or a Virtual Machine environment

#### Installation
Please choose installation steps from the below link based on your OS

``` https://minikube.sigs.k8s.io/docs/start/ ```
#### After Creating the nessesarly installation and Kind cluster use below commands - 

```bash
 - kubectl apply -f replicaset.yml 
 - kubectl get replicaset -o wide
 - kubectl get pods
 - kubectl port-forward <replicaset-pod-name> 4545:8000
```
Now you can check your Application on http://localhost:4545/

--------------------------------------------------

## Deployment using kubernetes deployment object
## pre-requisite

As above given for "replicaset" Install and create kind cluster (k8s) and then excecute the following commands.

```bash
 - kubectl apply -f deployment.yml 
 - kubectl get deployment -o wide
 - kubectl get pods
 - kubectl port-forward <deployment-pod-name> 4545:8000
```
Now you can check your Application on http://localhost:4545/
