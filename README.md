# Docker 101 Series

## 🚀 Welcome to Docker 101!

**Docker 101** is a beginner-friendly series designed to help you learn Docker from scratch. Whether you're new to containerization or just looking to solidify your understanding, this repository provides step-by-step tutorials, hands-on exercises, and real-world examples to guide you through Docker’s core concepts and commands.

### 📋 What You Will Learn:
- What Docker is and why containerization is important.
- How to install and configure Docker on different platforms.
- Docker commands for managing containers and images.
- Writing `Dockerfile` to create custom Docker images.
- Managing data with Docker volumes.
- Container networking and how to connect containers.
- Orchestrating multi-container applications using Docker Compose.
- How Docker fits into CI/CD pipelines.
  
---

## 📚 Table of Contents

1. [Introduction to Docker](#module-1-introduction-to-docker)
2. [Docker Basics & Commands](#module-2-docker-basics--commands)
3. [Docker Images & Dockerfile](#module-3-docker-images--dockerfile)
4. [Volumes & Persistent Storage](#module-4-volumes--persistent-storage)
5. [Networking in Docker](#module-5-networking-in-docker)
6. [Docker Compose](#module-6-docker-compose)
7. [CI/CD with Docker](#module-7-cicd-with-docker)
8. [Projects & Real-World Use Cases](#projects--real-world-use-cases)
9. [Contributing](#contributing)

---

## 🧑‍💻 Getting Started

### Prerequisites:
- **Basic Command Line Knowledge**: Some familiarity with Linux/Windows command line will be helpful.
- **Install Docker**: Make sure Docker is installed on your machine. You can follow [this guide](https://docs.docker.com/get-docker/) to install Docker for your platform.

Once Docker is installed, verify by running:
```bash
docker --version
```

---

## 📘 Modules Overview

### Module 1: [Introduction to Docker](./01-introduction)
Learn what Docker is, how it compares to virtual machines, and why containerization is a game changer. This module covers Docker’s architecture and helps you get Docker set up on your machine.

**Hands-on Exercise**: Running your first Docker container with `hello-world`.

---

### Module 2: [Docker Basics & Commands](./02-basic-commands)
Get familiar with the most essential Docker commands! Learn how to create, run, stop, and remove containers, as well as manage Docker images and logs.

**Hands-on Exercise**: Running an `nginx` container, inspecting logs, and stopping the container.

---

### Module 3: [Docker Images & Dockerfile](./03-images-dockerfile)
Understand how Docker images work and how to create your own using a `Dockerfile`. This module explains best practices for writing Dockerfiles and building efficient images.

**Hands-on Exercise**: Write a Dockerfile for a simple web application and build your own custom image.

---

### Module 4: [Volumes & Persistent Storage](./04-volumes)
Learn how to manage persistent data using Docker volumes. In this module, you’ll see how to store data across container restarts and share data between containers.

**Hands-on Exercise**: Create a containerized database with persistent storage using Docker volumes.

---

### Module 5: [Networking in Docker](./05-networking)
Understand Docker networking and how to connect containers together. Explore bridge networks, host networks, and how to expose container ports.

**Hands-on Exercise**: Create a multi-container network (e.g., a web server and database) and connect them using Docker networking.

---

### Module 6: [Docker Compose](./06-docker-compose)
Docker Compose simplifies managing multi-container applications. This module will guide you through defining services with `docker-compose.yml` files and how to manage them.

**Hands-on Exercise**: Create a `docker-compose.yml` file for a full-stack application (e.g., frontend, backend, and database).

---

### Module 7: [CI/CD with Docker](./07-ci-cd)
Integrate Docker into your Continuous Integration/Continuous Deployment (CI/CD) pipelines. Learn how Docker can be used to automate the building and deployment of your applications.

**Hands-on Exercise**: Build and push a Docker image automatically in a CI pipeline using GitHub Actions or Jenkins.

---

## 🎯 Projects & Real-World Use Cases

### Project 1: [Dockerizing a Simple Web Application](./projects/web-app-dockerized)
Learn how to containerize a simple web application (e.g., a Node.js or Python app) using Docker, Docker Compose, and persistent storage.

### Project 2: [Dockerizing a Microservices Architecture](./projects/microservices-architecture)
Containerize a microservices-based architecture with Docker Compose and container networking. Build and deploy multiple services that work together in a containerized environment.

---

## 🛠 Contributing

We welcome contributions from the community! If you'd like to add new modules, improve existing content, or fix issues, please follow the contribution guidelines below:

### How to Contribute:
1. Fork this repository.
2. Create a new branch for your feature or fix.
3. Commit your changes and create a pull request.

For more details, please check the [CONTRIBUTING.md](./CONTRIBUTING.md) file.

---

## 📞 Support & Questions

If you have any questions or need help, feel free to open an issue or reach out via GitHub Discussions. You can also drop an email to [vijay.saravanan0707@gmail.com](mailto:vijay.saravanan0707@gmail.com?subject=Docker 101)
We’re happy to help you on your Docker learning journey!

---

## ⭐️ Show Your Support

If you find this series helpful, feel free to star the repository! It helps others discover this resource and motivates us to keep improving the content.

---

**Happy Learning! 🚢 🐳**

---

This README introduces learners to the Docker 101 series, provides clear navigation, and outlines the key learning objectives for each module. Let me know if you'd like to tweak or add any specific sections!
