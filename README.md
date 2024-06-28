# Containers Incubator

This repo is incubator for containers.

[![Building Checking 🚀](https://github.com/SkywardAI/containers/actions/workflows/build_check.yml/badge.svg)](https://github.com/SkywardAI/containers/actions/workflows/build_check.yml)
[![Release Drafter 🚀](https://github.com/SkywardAI/containers/actions/workflows/release-drafter.yml/badge.svg)](https://github.com/SkywardAI/containers/actions/workflows/release-drafter.yml)
[![Backend CI/CD 🚀](https://github.com/SkywardAI/containers/actions/workflows/release_image.yml/badge.svg)](https://github.com/SkywardAI/containers/actions/workflows/ci.yml)


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
