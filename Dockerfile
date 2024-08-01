# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents (including index.html) into the container at /usr/src/app
COPY . .

# Expose port 8000 to the outside world
EXPOSE 8000

# Run Python's built-in HTTP server to serve the content of the current directory on port 8000
CMD ["python", "-m", "http.server", "8000"]