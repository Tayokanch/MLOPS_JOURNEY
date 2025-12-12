# How To set an Environment Variable
- `-e` : This is use to assign or change the value given to a variable in an env file when we want to run an `image`

- docker run -e PORT=4000 vogueserverapi 

# HOW TO FIND THE ENV VARIABLE SET ON A CONTAINER

-` docker inspect containerName`: look for this "config":{
    "Env":[
        
    ]
}