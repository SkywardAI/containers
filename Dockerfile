# Pull official 3.11.0-slim Python Docker image
FROM --platform=linux/amd64 python:3.11.0-slim

# Set the working directory
WORKDIR /app

# Set up Python behaviour
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies
RUN apt-get update \
  && apt-get -y install netcat-traditional gcc postgresql \
  && apt-get clean

# Install Python dependencies
COPY ./requirements.txt ./
RUN pip3 install -r requirements.txt