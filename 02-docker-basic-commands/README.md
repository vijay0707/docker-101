# Module 2: Docker Basics & Commands

Welcome to **Module 2** of the Docker 101 Series! In this module, you will learn the essential Docker commands required to manage containers and images effectively.

## Learning Goals

By the end of this module, you will:

- Understand basic Docker commands.
- Learn how to create, manage, and remove containers.
- Be able to view and manage container logs.

---

## 📋 Docker Commands Overview

Here is a list of fundamental Docker commands you'll be working with:

| **Command** | **Description** |
| --- | --- |
| `docker run` | Creates and runs a container from an image. |
| `docker ps` | Lists all running containers. |
| `docker stop` | Stops a running container. |
| `docker rm` | Removes stopped containers. |
| `docker images` | Lists all Docker images on your system. |
| `docker rmi` | Removes Docker images. |
| `docker logs [container_id]` | Shows logs from a running container. |

---

## 🖥️ Basic Docker Commands: Hands-On Exercise

This exercise will guide you through basic Docker commands to manage containers.

### 1. Run an Nginx container

The `docker run` command is used to create and run a container from an image. Let’s run an `nginx` container and expose port 80 to your local machine’s port 8080.

```bash
docker run -d -p 8080:80 nginx

```

- `d`: Run the container in detached mode (in the background).
- `p 8080:80`: Map port 8080 on your local machine to port 80 inside the container.
- `nginx`: The name of the image you want to run.

### 2. List running containers

After running the `nginx` container, list all the running containers with:

```bash
docker ps

```

### 3. Stop the container

Stop the running container using the `docker stop` command:

```bash
docker stop [container_id]

```

Replace `[container_id]` with the actual container ID listed from the previous `docker ps` command.

### 4. Start the container again

Start the stopped container using the `docker start` command:

```bash
docker start [container_id]

```

### 5. Remove the container

After stopping the container, remove it using `docker rm`:

```bash
docker rm [container_id]

```

### 6. View container logs

To view the logs of a running container, use the `docker logs` command:

```bash
docker logs [container_id]

```

To view logs in real-time, use the `-f` option to follow the logs:

```bash
docker logs -f [container_id]

```

---

## 📁 Repository Structure

This module is organized as follows:

```bash
02-basic-commands/
│
├── README.md               # Explanation of Docker commands and hands-on exercise
└── examples/
    └── docker-basics.sh        # Script to run an nginx container and perform basic commands

```

---

## 🛠️ Additional Resources

- [Docker Official Documentation: Docker Run](https://docs.docker.com/engine/reference/commandline/run/)
- [Docker Official Documentation: Docker PS](https://docs.docker.com/engine/reference/commandline/ps/)
- [Docker Logs Documentation](https://docs.docker.com/engine/reference/commandline/logs/)

---

### 🚀 Next Steps

Now that you’ve mastered the basics of Docker commands, continue with [**Module 3: Docker Images & Dockerfile**](../03-images-dockerfile/README.md) to learn how to create and manage Docker images.