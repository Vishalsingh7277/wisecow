# Use a base image with Python (assuming Wisecow is a Python app)
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app

# Expose the application port (assuming the app runs on port 8000)
EXPOSE 8000

# Define the command to run the application
CMD ["python", "app.py"]
