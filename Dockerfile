# Use the official Python image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Install the required dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application directory to the container
COPY . .

# Expose the application port (e.g., 5000 for Flask)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]