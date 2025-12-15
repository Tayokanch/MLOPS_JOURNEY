
1. # How To create a Docker Image
- To create before creating a `docker image` it is recommended to install all the neccessary things manually for once, if all works, use the history to then create the Image. E.G

## How does this works
* Use the install Image of the OS you wanna deploy to e.f `Ubuntu` in an interactive mode . i.e `docker run -it ubuntu bash` 
* install all neccesary packages and dependencies based on the application
* copy the source code to /opt/app.py
* CD /opt
* RUN FLASK=app.py flaks run --host=0.0.0.0
* use DockerIP:webserport on VM browser.
* If this works , run command `history` we can the use the history of this to build and image inside our source code using the application image e.g python instead of Ubuntu

1. OS - Ubuntu
2. Update apt repo
3. Install dependencies using apt
4. Install dependencies using pip for python application
5. Copy source code to /opt folder
6. Run the web server using "flask command" for python based project
7.  Build

# Overview
1. FROM Ubuntu
1. RUN apt-get update = to update
2. RUN apt-get install python

3. RUN pip install flask
4. RUN pip installl flaks-mysql

5. COPY . /opt/source-code

6. ENTRYPOINT FLASK_APP=/opt/source/app.py flask run

7.  docker build Dockerfile -t username/app-name : This will create an image locally on my system

8.  docker push username/app-name: push the image to Docker Hub


# USING PYTHON IMAGE TO BUILD


1. FROM python:3.11

2. RUN pip install flask
3. RUN pip installl flaks-mysql

4. COPY . /opt/source-code

5. ENTRYPOINT FLASK_APP=/opt/source/app.py flask run

7.  RUN command ` docker build -t imageName .`: To build the image
   - RUN command ` docker build -t imageName:tag .`: To build the image with a different version using tag
8.  Run command `docker images`: This is to show all the images

9.  `docker login`: To login to docker hub

10. RUn `docker push username/imageName`: push the image to Docker Hub
11. 

# USING PYTHON IMAGE TO BUILD EXAMPLE 2

1. FROM python:3.11-slim

2. WORKDIR /app

3. COPY requirements.txt .
4. RUN pip install --no-cache-dir -r requirements.txt

5. COPY . .

6. ENV FLASK_APP=app.py

7. EXPOSE 5000

8. CMD ["gunicorn", "--bind", "0.0.0.0:5000" "app:app"] **For flask based application
