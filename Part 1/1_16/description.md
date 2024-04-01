# Deploying a Containerized React Landing Page on Render

## Overview

This file outlines the steps I took to deploy a containerized React landing page template on Render, a cloud platform for deploying and managing applications.
here is the link of the deployed application : [React-app](https://react-app-p4dg.onrender.com/)
here is the image i used : [image](https://hub.docker.com/r/shadlia/react-app)

## Steps Taken

### 1. Selecting the Web Application

I chose a React landing page template as the web application to deploy. This template serves as a starting point for creating stylish and modern landing pages. i had this application and its source code in my local machine .

### 2. Creating the Dockerfile

To containerize the React landing page template, I created a Dockerfile in the project directory. The Dockerfile includes instructions to build an image with Node.js and Yarn installed, as well as commands to install dependencies and build the React app.

### 3. Building the Docker Image

Using the Dockerfile, I built the Docker image for the React landing page template by executing the `docker build` command in the project directory.

`docker build -t react-app .`

### 4. Publishing to Docker Hub

Once the Docker image was successfully built, I published it to Docker Hub. This step involved tagging the image with a name and version, logging in to Docker Hub, and pushing the image using these commands :

`docker tag react-app shadlia/react-app`
`docker login`
`docker push shadlia/react-app `

### 5. Selecting Render for Deployment

For deploying the containerized React landing page template, I chose Render as the cloud provider. Render offers a simple and intuitive platform for deploying and managing containerized applications.

### 6.Creating and Deploying a Web Service on Render

I initiated the deployment process on Render by clicking on "Create Web Service". then i added my image link.
Render automatically pulled the Docker image from Docker Hub and deployed the web application using the specified configurations.

### 7. Verifying Deployment

After the deployment process completed, I accessed the deployed React landing page template using the provided URL. I verified that the landing page is running correctly in the cloud environment.

here is the link of the deployed application : [React-app](https://react-app-p4dg.onrender.com/)

## Conclusion

By following these steps, I successfully containerized and deployed the React landing page template using Docker and Render. This demonstrates the ability to deploy containerized applications in the cloud, providing scalability and ease of management.
