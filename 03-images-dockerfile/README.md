# Module 3: Working with Docker Images

## **Learning Goals:**

- Understand the concept of Docker images and their use.
- Learn how Docker images are built using Dockerfile.
- Get familiar with the concept of layers in Docker images.
- Learn best practices for creating and managing Docker images.

---

## **What Are Docker Images?**

Docker images are the building blocks of Docker containers. They are immutable files that contain the source code, libraries, dependencies, and tools needed to run an application. Docker images are used to create and run containers.

### Key Concepts:

- **Image Layers**: Docker images are composed of multiple layers, with each layer representing an instruction from the Dockerfile. Each layer adds to the final image.
- **Base Image**: The starting point of an image. It could be an OS (like `alpine`, `ubuntu`), or even another image.
- **Immutable**: Once built, an image does not change. Updates are made by creating new layers.
- **Docker Registry**: A storage and content delivery system for Docker images (e.g., Docker Hub).

---

## **Dockerfile: Building Custom Docker Images**

A `Dockerfile` is a simple text file that contains instructions on how to build a Docker image. These instructions are executed in sequence, and each instruction creates a new layer in the image.

### Key Instructions in a Dockerfile:

- **FROM**: Defines the base image.
- **RUN**: Executes a command inside the image.
- **COPY**: Copies files from your local filesystem into the image.
- **CMD**: Provides the default command to run when a container starts.
- **EXPOSE**: Defines the network port the container will listen on at runtime.

### Example `Dockerfile` for a Simple Python Application:

```

# Use a base Python image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install the required Python packages
RUN pip install -r requirements.txt

# Define the command to run the application
CMD ["python", "app.py"]

```

This Dockerfile does the following:

1. **FROM python:3.9-slim**: Uses a slim version of the Python 3.9 image as the base.
2. **WORKDIR /app**: Sets `/app` as the working directory inside the container.
3. **COPY . .**: Copies all files from the current local directory into `/app` inside the container.
4. **RUN pip install -r requirements.txt**: Installs the Python dependencies listed in `requirements.txt`.
5. **CMD ["python", "app.py"]**: Defines the command to run the Python application (`app.py`) when the container starts.

---

## **Building and Running the Docker Image**

To build and run the Docker image, follow these steps:

### 1. **Build the Image**:

```bash

docker build -t my-python-app .

```

Explanation:

- `docker build`: Command to build a Docker image.
- `t my-python-app`: Tags the image with the name `my-python-app`.
- `.`: Refers to the current directory containing the Dockerfile.

### 2. **Run the Container**:

```bash

docker run -d -p 5000:5000 my-python-app

```

Explanation:

- `docker run`: Starts a container from the image.
- `d`: Runs the container in detached mode (in the background).
- `p 5000:5000`: Maps port 5000 on the container to port 5000 on your local machine.
- `my-python-app`: The name of the image we built.

### 3. **Verify the Running Container**:

You can verify that the container is running and your app is working by running:

```bash

docker ps

```

You can also access your application by navigating to `http://localhost:5000` in your browser (assuming your app is running on port 5000).

---

## **Best Practices for Writing Dockerfiles**

- **Use a Minimal Base Image**: Always opt for a smaller base image like `alpine` or `slim` versions to reduce image size.
    
    Example:
    
    ```

    FROM python:3.9-alpine
    
    ```
    
- **Leverage Caching**: Docker caches each layer, so structure your Dockerfile to minimize the layers that change frequently (like `RUN pip install`). Place static commands (e.g., installing system packages) earlier in the Dockerfile.
- **Use `.dockerignore`**: Create a `.dockerignore` file to exclude unnecessary files from being copied into the image (e.g., node_modules, .git directories).
    
    Example `.dockerignore`:
    
    ```

    *.log
    __pycache__
    .git
    
    ```
    
- **Avoid Hardcoding Values**: Instead of hardcoding values in the Dockerfile, use environment variables for configuration.
    
    Example:
    
    ```
    Dockerfile
    Copy code
    ENV PORT 5000
    CMD ["python", "app.py", "--port", "$PORT"]
    
    ```
    

---

## **Understanding Image Layers**

Each instruction in a Dockerfile creates a layer in the image. Layers are cached, so reusing layers that haven’t changed speeds up the build process. This is why ordering your Dockerfile’s instructions is important to maximize layer caching.

### Example of Layering:

```

FROM python:3.9-slim      # Layer 1: Python base image
COPY . /app               # Layer 2: Copy files to /app
RUN pip install -r requirements.txt   # Layer 3: Install dependencies
CMD ["python", "app.py"]  # Layer 4: Run the application

```

If you change only the `CMD` layer, Docker can reuse the previous layers from the cache, which speeds up the build process.

---

## **Exercise: Build Your Custom Docker Image**

### Steps:

1. **Create a Simple Python App**:
    - Create a Python file (`app.py`) that runs a web server using `Flask`.
        
        Example:
        
        ```python

        from flask import Flask
        app = Flask(__name__)
        
        @app.route('/')
        def hello():
            return "Hello, Docker!"
        
        if __name__ == "__main__":
            app.run(host='0.0.0.0', port=5000)
        
        ```
        
2. **Create a `requirements.txt`** file with the following content:
    
    ```makefile

    Flask==2.0.1
    
    ```
    
3. **Write a Dockerfile** (as shown earlier).
4. **Build the Image**:
    
    ```bash

    docker build -t my-flask-app .
    
    ```
    
5. **Run the Container**:
    
    ```bash

    docker run -d -p 5000:5000 my-flask-app
    
    ```
    
6. **Verify the App**: Visit `http://localhost:5000` in your browser. You should see the message: "Hello, Docker!"

---

## **Conclusion**

In this module, you’ve learned how to:

- Build Docker images using a `Dockerfile`.
- Manage and optimize Docker images.
- Understand the layered structure of Docker images.
- Follow best practices to create efficient and lightweight Docker images.

## 🚀 Next Steps

Now that you’ve mastered the basics of Docker commands, continue with [**Module 3: Docker Images & Dockerfile**](../04-running-containers/README.md) to learn how to create and manage Docker images.

Happy Learning!! 🐳