# Basic RESTful API without Database

This repository contains a basic example of a RESTful API for a blog without a database using Node.js.

## Description

This Node.js application demonstrates how to create a simple RESTful API for managing blog posts and comments without the use of a traditional database. It's suitable for learning purposes or as a starting point for small projects where a database is not required.

## How to Run

To run the application locally, follow these steps:

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/shadlia/restful-api.git
   ```

2. Navigate to the cloned directory:

   ```bash
   cd restful-api-without-db
   ```

3. Install dependencies using npm:

   ```bash
   npm install
   ```

4. Start the server:

   ```bash
   npm start
   ```

5. Once the server is running, you can send requests to the API endpoints using tools like CURL or HTTP clients like Postman.

## Docker Image

Alternatively, you can run the application as a Docker container. First, make sure you have Docker installed on your machine.

### Pull the Docker Image

You can pull the Docker image from Docker Hub using the following command:

```bash
docker pull shadlia/restful-api
```

### Running the Docker Container

Once you have the Docker image, you can run it as a container using the following command:

```bash
docker run -p 3000:3000 restful-api

```

## Usage

### API Endpoints

The API exposes the following endpoints:

- `GET /posts`: Get all posts
- `POST /posts`: Create a new post
- `GET /posts/:postId`: Get a specific post
- `PUT /posts/:postId`: Update a post
- `DELETE /posts/:postId`: Delete a post
- `POST /posts/:postId/comments`: Add a comment to a post
- `GET /posts/:postId/comments`: Get all comments for a post
- `PUT /posts/:postId/comments/:commentId`: Update a comment
- `DELETE /posts/:postId/comments/:commentId`: Delete a comment

### Examples using curl

#### Posts post data

`curl -H "Content-Type: application/json" -X POST -d '{"name": "My first article", "url":"http://example.com", "text": ""}'  "http://localhost:3000/posts"`

#### Updates post data at specific id

`curl -H 'Content-Type: application/json' -X PUT -d '{"name": "Updated article", "url":"https://www.google.com", "text": ""}' "http://localhost:3000/posts/1"`

#### Gets post data

`curl "http://localhost:3000/posts"`

#### Deletes post data at specific id

`curl -X DELETE "http://localhost:3000/posts/2"`

#### Posts comment

`curl -H "Content-Type: application/json" -X POST -d '{"text": "NEW COMMENT added!!!"}'  "http://localhost:3000/posts/0/comments"`

#### Updates comment at specific id

`curl -H "Content-Type: application/json" -X PUT -d '{"text": "UPDATED comment!!!"}'  "http://localhost:3000/posts/0/comments/1"`

#### Gets all comments

`curl "http://localhost:3000/posts/0/comments"`

#### Deletes comment at specific id

`curl -X DELETE "http://localhost:3000/posts/0/comments/1"`
