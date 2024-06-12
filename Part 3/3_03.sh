#!/bin/bash

# Check if the correct number of arguments are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHub repo> <Docker Hub repo>"
    exit 1
fi

# Assign arguments to variables
GITHUB_REPO=$1
DOCKERHUB_REPO=$2

# Extract the repository name from the GitHub repo argument
REPO_NAME=$(basename "$GITHUB_REPO")

# Clone the GitHub repository
echo "Cloning repository https://github.com/$GITHUB_REPO.git..."
git clone https://github.com/$GITHUB_REPO.git

# Navigate into the cloned repository directory
cd $REPO_NAME || { echo "Failed to enter directory $REPO_NAME"; exit 1; }

# Build the Docker image
echo "Building Docker image..."
docker build -t $DOCKERHUB_REPO .

# Log in to Docker Hub
echo "Logging in to Docker Hub..."
docker login

# Push the Docker image to Docker Hub
echo "Pushing Docker image to Docker Hub..."
docker push $DOCKERHUB_REPO

# Clean up: Navigate out of the directory and remove the cloned repository
cd ..
rm -rf $REPO_NAME

echo "Done!"
