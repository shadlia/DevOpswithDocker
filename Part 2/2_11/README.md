In this exercise, I set up a chat application using Docker Compose, consisting of React for the frontend, Node.js/Express for the backend, and MongoDB for data storage. Additionally, I added an NGINX reverse proxy to route traffic to the appropriate services.
I have worked on this application a while ago and its already published on my github here are the links for backend and frontend :
[link-to-backend-repo]: https://github.com/shadlia/Chatty-API
[link-to-frontend-repo]: https://github.com/shadlia/Chatty-React

I also added the whole application after the exercice in my github in case you want to check it out here
[link-to-Full-App-repo]: https://github.com/shadlia/Chatty

## Notes

- I have made some changes during the exercise to match the containerazation configurations
- I also added both Dockerfiles for the frontend and backend along with docker-compose with a picture of my working directory tree .

## Steps Taken

1. **Backend Setup:**

   - Created a Dockerfile for the backend service, specifying the necessary configurations and dependencies.
   - Configured the backend service to connect to MongoDB using environment variables (`MONGODB_URI`).

   ```Database configuration
    const uri = process.env.MONGODB_URI;
   mongoose
   .connect(uri, { useNewUrlParser: true, useUnifiedTopology: true })
   .then(() => console.log('Connected to MongoDB'))
   .catch((err) => console.error('Error connecting to MongoDB:', err));

   ```

   - Ensured that the backend service depends on the MongoDB service (`depends_on`).

2. **Frontend Setup:**

   - Created a Dockerfile for the frontend service, including the build process for React.
   - Configured environment variables in the frontend service to specify the backend URL.

   ```
    ENV REACT_APP_API_URL=http://backend:5000
   ```

3. **Docker Compose Configuration:**

   - Created a `docker-compose.yml` file to define the application's services.
   - Added services for the frontend, backend, and MongoDB, specifying build contexts and dependencies.
   - Configured port mappings and volume mounts as required.

4. **MongoDB Setup:**

   - Added the MongoDB service to the Docker Compose configuration, using the official MongoDB image.
   - Mapped port 27017 to allow communication with the MongoDB service.
   - Configured a volume mount to persist MongoDB data.

5. **Reverse Proxy Configuration:**

   - Added a reverse proxy service using the NGINX Docker image.
   - Exposed port 80 of the NGINX container to route traffic from the host machine.
   - Created a custom NGINX configuration file (`nginx.conf`) to define routing rules i added it too in the exercice folder .
   - Updated the NGINX configuration to route requests to the backend and frontend services, eliminating direct access to backend and frontend ports.
   - also updated the front url to connect to the backend after using a proxy to http://localhost/api

6. **Final Adjustments:**
   - Removed direct port mappings for the backend and frontend services to enforce access through the reverse proxy only.
   - Tested the setup to ensure proper communication between services and routing through the reverse proxy.
   - i added a screenshots of accessing the application with http://localhost instead of using ports of frontend and backend
