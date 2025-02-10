# docker-hello-world

# Running Multiple Copies:

You can run multiple copies of your Docker image using the docker run command with the -p (port mapping) 
and -e (environment variables) flags:

# Instance 1
docker run -p 5001:5000 -e INSTANCE_NUMBER=1 my-python-app

# Instance 2
docker run -p 5002:5000 -e INSTANCE_NUMBER=2 my-python-app

# Instance 3
docker run -p 5003:5000 -e INSTANCE_NUMBER=3 my-python-app