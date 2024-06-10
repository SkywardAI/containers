FROM python:3.12.4-slim

# Install system dependencies
# netcat for nc command
# If necessary gcc postgresql
RUN apt-get update \
  && apt-get -y install netcat-traditional \
  && apt-get clean

# make Python avoid to write .pyc files on the import of source modules 
ENV PYTHONDONTWRITEBYTECODE 1
# the stdout and stderr streams are sent straight to terminal (e.g. your container log) without being first buffered and that you can see the output of your application (e.g. django logs) in real tim
ENV PYTHONUNBUFFERED 1

# Insalling ML dependencies inside requirements.txt
COPY requirements.txt /tmp/pip-tmp/
RUN pip --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
   && rm -rf /tmp/pip-tmp

