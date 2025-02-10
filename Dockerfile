# Use a suitable base image (Python 3.9 slim is a good choice)
FROM python:3.9-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file (if it exists) and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port your application uses (Flask default is 5000)
EXPOSE 5000

# Set the default command to run when the container starts
CMD ["python", "app.py"]