# Use an official Ubuntu base image
FROM ubuntu:20.04

# Set environment variables to prevent interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y \
    wget \
    bwa \
    samtools \
    bcftools \
    gzip \
    awk \
    grep \
    curl \
    && apt-get clean

# Create working directory
WORKDIR /pipeline

# Copy the pipeline script into the container
COPY bash_pip.sh /pipeline/bash_pip.sh

# Ensure the script has executable permissions
RUN chmod +x /pipeline/bash_pip.sh

# Set the default command to run the pipeline script
CMD ["/bin/bash", "/pipeline/bash_pip.sh"]

