# Containers Incubator

This repo is incubator for containers.

[![Building Checking 🚀](https://github.com/SkywardAI/containers/actions/workflows/build_check.yml/badge.svg)](https://github.com/SkywardAI/containers/actions/workflows/build_check.yml)
[![Release Drafter 🚀](https://github.com/SkywardAI/containers/actions/workflows/release-drafter.yml/badge.svg)](https://github.com/SkywardAI/containers/actions/workflows/release-drafter.yml)
[![Backend CI/CD 🚀](https://github.com/SkywardAI/containers/actions/workflows/release_image.yml/badge.svg)](https://github.com/SkywardAI/containers/actions/workflows/ci.yml)


# Requirements

Docker and docker-compose version see below:

```bash
ubuntu:~$ docker version
Client:
 Version:           24.0.7
 API version:       1.43
 Go version:        go1.21.1
 Git commit:        24.0.7-0ubuntu2~22.04.1
 Built:             Wed Mar 13 20:23:54 2024
 OS/Arch:           linux/amd64
 Context:           default

Server:
 Engine:
  Version:          24.0.7
  API version:      1.43 (minimum version 1.12)
  Go version:       go1.21.1
  Git commit:       24.0.7-0ubuntu2~22.04.1
  Built:            Wed Mar 13 20:23:54 2024
  OS/Arch:          linux/amd64
  Experimental:     false
 containerd:
  Version:          1.7.12
  GitCommit:        
 runc:
  Version:          1.1.12-0ubuntu2~22.04.1
  GitCommit:        
 docker-init:
  Version:          0.19.0
  GitCommit:        


ubuntu:~$ docker-compose version
docker-compose version 1.29.2, build unknown
docker-py version: 5.0.3
CPython version: 3.10.12
OpenSSL version: OpenSSL 3.0.2 15 Mar 2022

```

# Building image

The project should be developed in a containerized environment which means it should be opened in the container of [Dockerfile](./Dockerfile).


## Installing poetry

```shell
make poetry
```

## Add dependencies

```shell
poetry add <package-name>=<version>
```

## Lock

```shell
make lock
```

## Export as requirements.txt

```shell
make plugin

make expo
```

And then commit the changes.
