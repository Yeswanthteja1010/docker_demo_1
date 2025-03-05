# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app/

COPY requirement.txt /app/

# Install any needed dependencies
RUN pip install --no-cache-dir -r requirement.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variable to avoid Python buffering
ENV PYTHONUNBUFFERED 1

# Run app.py when the container launches
CMD ["python", "app.py"]
