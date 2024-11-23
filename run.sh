#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

# Pull the latest images
docker-compose pull

# Start the containers
docker-compose up -d

echo "Application is starting..."
echo "Frontend will be available at http://localhost:5173"
echo "Backend will be available at http://localhost:3000" 