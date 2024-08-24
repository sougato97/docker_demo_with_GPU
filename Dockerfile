# Use an official Python runtime as a parent image
FROM python

# Set the working directory in the container
# This is equivalent to "WORKDIR /usr/src/app"
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt ./

# Install any needed packages specified in requirements.txt
# Not to cache the packages it downloads. This can help reduce the size of the Docker image by not storing the downloaded package files.
# RUN pip install --no-cache-dir -r requirements.txt
# OTHERISE
RUN pip3 install -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app

# Run app.py when the container launches
CMD ["python3", "app.py"]