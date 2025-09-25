# Use a minimal base image with Python
FROM python:3.10-slim

# Set working directory
WORKDIR /eaton

# Copy pyproject.toml and optional poetry.lock if using poetry
COPY pyproject.toml ./
# Copy application code
COPY src ./

# Install build tools and pip
RUN apt-get update && \
    apt-get install -y build-essential && \
    pip install --upgrade setuptools wheel && \
    pip install --upgrade pip build && \
    pip install . && \
    rm -rf /var/lib/apt/lists/*

# Expose port
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
