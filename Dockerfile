FROM python:3.12.2-slim

# Set the working directory
WORKDIR /app

# make Python avoid to write .pyc files on the import of source modules 
ENV PYTHONDONTWRITEBYTECODE 1
# the stdout and stderr streams are sent straight to terminal (e.g. your container log) without being first buffered and that you can see the output of your application (e.g. django logs) in real tim
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /tmp/pip-tmp/
RUN pip --disable-pip-version-check --no-cache-dir install -r /tmp/pip-tmp/requirements.txt \
   && rm -rf /tmp/pip-tmp
