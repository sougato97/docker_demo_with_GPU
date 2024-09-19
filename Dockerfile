# Use an official Python runtime as a parent image
FROM ubuntu:22.04
# FROM python

# Set the working directory in the container
# This is equivalent to "WORKDIR /usr/src/app"
WORKDIR /app

# Copy the rest of the application code into the container
COPY . /app

# Run app.py when the container launches
# CMD ["python3", "app.py"]