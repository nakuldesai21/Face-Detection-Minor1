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

To deploy a project using DockerFile use the following command
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

To deploy the project using the Docker-compose file use the following command
```bash
  - gh repo clone nakuldesai21/Face-Detection-Minor1
  - cd Face-Detection-Minor1
  - To start the Application in the foreground
     docker-compose up
     OR
    To start the Application in the background
     docker-compose up -d
  - To list the containers created by docker-compose
    docker-compose ps
```
Now you can check your Application on http://localhost:8000/
