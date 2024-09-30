# Docker 101 Series 🐳
Welcome to **Docker 101**, a beginner-friendly series designed to help you learn Docker from scratch. This repository will guide you through the core concepts of containerization, how to build, manage, and deploy containerized applications effectively, and provide hands-on exercises to solidify your learning.

## 📋 What You Will Learn:
- What Docker is and why containerization is important.
- Setting up Docker on your machine.
- Understanding Docker images and containers.
- Building and managing Docker images with Dockerfile.
- Networking in Docker: connecting containers.
- Docker Compose for multi-container applications.
- Best practices for Dockerfile and image management.
- Hands-on projects to reinforce your learning.

---

## 📚 Prerequisite
There are no strict prerequisites for this series, but familiarity with command line basics will be helpful. For learners interested in container orchestration, we recommend checking out our **[Kubernetes 101 Series](#)** after completing this Docker series.

---

## 📚 Table of Contents

1. **[Module 1: Introduction to Docker](#module-1-introduction-to-docker)**
2. **[Module 2: Docker Basics & Commands](#module-2-docker-basics--commands)**
3. **[Module 3: Working with Docker Images](#module-3-working-with-docker-images)**
4. **[Module 4: Running Docker Containers](#module-4-running-docker-containers)**
5. **[Module 5: Docker Networking](#module-5-docker-networking)**
6. **[Module 6: Docker Compose](#module-6-docker-compose)**
7. **[Module 7: Best Practices for Docker](#module-7-best-practices-for-docker)**
8. **[Projects & Real-World Use Cases](#projects--real-world-use-cases)**
9. **[Contributing](#contributing)**

---

## 🧑‍💻 Getting Started

**Prerequisites:**
1. **Basic Command Line Knowledge**: Familiarity with terminal commands will help you follow along with the exercises.
2. **Install Docker**: Set up Docker on your machine by following the official Docker installation guide.

Once you have Docker installed, verify the installation by running:

```bash
docker --version
```

---

## 📘 Modules Overview

### **[Module 1: Introduction to Docker](./01-introduction-to-docker)**
Learn the basics of Docker, the problems it solves, and the core concepts of containerization. Understand the architecture of Docker, including the Docker Engine, images, containers, and the Docker daemon. Learn how these components work together to facilitate containerization.

**Hands-on Exercise**: Install Docker and run your first Docker container.

---

### **[Module 2: Docker Basics & Commands](./02-basic-commands)**
Learn basic Docker commands to manage containers, images, and view container logs.

**Hands-on Exercise**: Explore the Docker architecture by running basic Docker commands.

---

### **[Module 3: Working with Docker Images](./03-images-dockerfile)**
Learn how to create, manage, and optimize Docker images. Understand the concept of layers in images and how to use Dockerfile to automate image builds.

**Hands-on Exercise**: Create a Dockerfile and build a custom image for a simple application.

---

### **[Module 4: Running Docker Containers](./04-volumes)**
Discover how to run and manage Docker containers, including starting, stopping, and removing containers. Learn about the container lifecycle and management commands.

**Hands-on Exercise**: Run a web server in a Docker container and access it from your browser.

---

### **[Module 5: Docker Networking](./05-networking)**
Dive into Docker networking and learn how containers communicate with each other and external systems. Understand the different network modes available in Docker.

**Hands-on Exercise**: Set up a multi-container application and manage networking between them.

---

### **[Module 6: Docker Compose](./06-docker-compose)**
Get started with Docker Compose, a tool for defining and running multi-container Docker applications. Learn how to create `docker-compose.yml` files to orchestrate your applications.

**Hands-on Exercise**: Use Docker Compose to set up a multi-container application (e.g., a web app with a database).

---

### **[Module 7: Best Practices for Docker](./07-best-practices)**
Learn best practices for working with Docker, including image optimization, security considerations, and managing the container lifecycle effectively.

**Hands-on Exercise**: Refactor your Dockerfile and application setup based on best practices.

---

## 🎯 Projects & Real-World Use Cases

### **[Project 1: Building a Web Application with Docker](./projects/web-app-dockerized)**
Learn how to build a web application (Node.js or Python) using Docker. Manage dependencies, create a Dockerfile, and run the application in a container.

---

### **[Project 2: Docker Compose for Microservices](./projects/microservices-architecture)**
Deploy a microservices architecture using Docker Compose, connecting multiple services and managing them as a single application.

---

## 🛠 Contributing
We welcome contributions from the community! Whether it's adding new modules, improving existing content, or fixing issues, your input is valued.

**How to Contribute:**
1. Fork this repository.
2. Create a new branch for your feature or fix.
3. Commit your changes and submit a pull request.

For more details, please refer to the **[CONTRIBUTING.md](./CONTRIBUTING.md)** file.

---

## 📞 Support & Questions
If you have any questions or need help, feel free to open an issue or reach out via **GitHub Discussions**. You can also drop an email to `vijay.saravanan0707@gmail.com`. We’re here to support your Docker learning journey!

---

⭐️ **Show Your Support**
If you find this series helpful, please consider starring the repository! It helps others discover this resource and encourages us to keep improving the content.

---

Happy Learning! 🚀 🐳

