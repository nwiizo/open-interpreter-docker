# Use a lighter base image
FROM python:3.11

# Optimize caching and install necessary packages
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y --no-install-recommends git && \
  rm -rf /var/lib/apt/lists/*

# Copy requirements.txt
COPY requirements.txt /tmp/

# Install Python packages
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set working directory
WORKDIR /root

# Set default command
CMD ["/bin/bash"]
