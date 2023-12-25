# Use a minimal base image
FROM python:alpine3.7

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
RUN pip install Flask

# Expose the port the app runs on
EXPOSE 80

# Copy the app files to the container
COPY . .

# Command to run the application
CMD ["python", "app.py"]
