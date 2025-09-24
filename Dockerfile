# Use a minimal base image with Python
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install build tools and pip
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*

# Copy pyproject.toml and optional poetry.lock if using poetry
COPY pyproject.toml ./
# COPY poetry.lock ./

# Install dependencies using pip or poetry
# If using poetry:
# RUN pip install poetry && poetry install --no-root

# If using setuptools or hatchling:
RUN pip install --upgrade pip build && pip install .

# Copy application code
COPY src/app.py .

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
