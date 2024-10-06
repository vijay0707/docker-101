#!/bin/bash

# Run an Nginx container in detached mode and map port 8080 to container's port 80
echo "Running Nginx container on port 8080..."
docker run -d -p 8080:80 --name my_nginx_container nginx

# Check if the container is running
echo "Listing running containers..."
docker ps

# Wait for a few seconds to let the container start
sleep 3

# Display logs from the running container
echo "Displaying logs from the Nginx container..."
docker logs my_nginx_container

# Stop the container
echo "Stopping the Nginx container..."
docker stop my_nginx_container

# Start the container again
echo "Starting the Nginx container..."
docker start my_nginx_container

# Remove the container after stopping
echo "Removing the Nginx container..."
docker stop my_nginx_container
docker rm my_nginx_container

echo "Nginx container has been removed."

# End of script
