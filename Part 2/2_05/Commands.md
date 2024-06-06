# Exercise 2.5 Solution

## Steps I Followed

1. **Modified the `docker-compose.yml` file:**
   I added the following line to the `calculator` service in the `docker-compose.yml` file:

   ```yaml
   - VIRTUAL_HOST=calculator.localtest.me
   ```

2. **Started the services with scaled compute instances:**
   I used the following command to start the services and scale the `compute` service to 3 instances to increase the calculation speed:
   ```sh
   docker-compose up --scale compute=3
   ```

These steps ensured that the application runs correctly and the button turns green.
