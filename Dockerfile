FROM python:3.11.8-slim as build

# Install system dependencies
# netcat for nc command
# If necessary gcc postgresql
RUN apt-get update && \
    apt-get -y install netcat-traditional && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/*

# Set up a new user
RUN useradd -m  -u 1000 user

# Switch to user
USER user

# Set home to the user's home directory
ENV HOME=/home/user \
    PATH=/home/user/.local/bin:$PATH \
    PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Insalling ML dependencies inside requirements.txt
COPY --chown=user requirements.txt /tmp/pip-tmp/
RUN pip --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt && \
    pip --disable-pip-version-check --no-cache-dir install -r https://raw.githubusercontent.com/SkywardAI/chat-backend/main/backend/requirements.txt && \
    rm -rf /tmp/pip-tmp

# it doesn't include the build tools and intermediate files from the build stage
FROM python:3.11.8-slim as production

RUN useradd -m  -u 1000 user

COPY --from=build /home/user /home/user

USER user
