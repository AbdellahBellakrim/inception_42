# Project Title

A System Administration Project using Docker

## Table of Contents

- [Introduction](#introduction)
- [General Guidelines](#general-guidelines)
- [Mandatory Part](#mandatory-part)
- [Bonus Part](#bonus-part)

## Introduction

This project aims to broaden your knowledge of system administration by utilizing Docker. It involves setting up a small infrastructure composed of different services, all running in Docker containers. The project must be done in a virtual machine, and docker-compose is used for managing the containers.

## General Guidelines

- Set up a virtual machine for the project.
- Place all the configuration files in the `srcs` folder.
- Include a `Makefile` at the root of the directory to automate the setup and build process.
- Familiarize yourself with Docker usage by referring to relevant documentation.
- Each Docker image must have the same name as its corresponding service.
- Each service should run in a dedicated container.
- Use Dockerfiles to create your own Docker images instead of pulling pre-made images.
- Set up NGINX with TLSv1.2 or TLSv1.3 only in a Docker container.
- Configure WordPress + php-fpm and MariaDB in separate Docker containers.
- Use volumes to store the WordPress database and website files.
- Establish a docker-network to connect the containers.
- Enable automatic restart of containers in case of a crash.

## Mandatory Part

The mandatory part includes the following requirements:

- Use Alpine or Debian as the base image for containers.
- Build Docker images by calling respective Dockerfiles in the `docker-compose.yml` using the `Makefile`.
- Set up NGINX, WordPress, php-fpm, MariaDB, volumes, and docker-network.
- Restrict usernames in the WordPress database.
- Configure domain name resolution to point to the local IP address.

For detailed instructions and examples, please refer to the project document.

## Bonus Part

The bonus part is optional. It offers additional tasks to enhance your project. Some of the suggested bonus tasks include:

- Setting up Redis cache for the WordPress website.
- Creating an FTP server container for the WordPress website.
- Developing a static website in a language other than PHP.
- Including Adminer for database management.
- Adding a service of your choice with a justification(cadvisor).
