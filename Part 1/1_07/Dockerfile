# Start from the ubuntu image 
FROM ubuntu:22.04

#Install curl 
RUN apt-get update && apt-get install -y curl

# Copy the script file 
COPY script.sh .

# When running docker run the command will be ./script.sh
CMD ./script.sh