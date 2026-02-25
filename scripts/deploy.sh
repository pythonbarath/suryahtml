#!/bin/bash
# Go to the folder where CodeDeploy copies your files
cd /home/ec2-user/htmlproject

# Stop and remove the old container if it exists
docker stop my-html-app || true
docker rm my-html-app || true

# Build the new Docker image
docker build -t my-html-app .

# Run the new container on port 80
docker run -d -p 80:80 --name my-html-app my-html-app