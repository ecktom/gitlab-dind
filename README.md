# Gitlab-DinD (DinD image for Gitlab Docker executor)
This is an image providing an ubuntu based fully functional docker environment inside a standalone container including.
It is meant for building purposes using as base image in [Gitlab Docker executor](https://docs.gitlab.com/runner/executors/docker.html).

This image is needed, because there are several problems with other dind images in context of GitLab Runner Docker Executor:
* [petazzo/dind](https://github.com/jpetazzo/dind/) outdated ubuntu version (14.04) at time of authoring this.
* [gitlab/dind](https://hub.docker.com/r/gitlab/dind/) is not being updated anymore, so it ships a very old docker and an old ubuntu version (based on petazzo/dind).
* [_/docker:dind](https://hub.docker.com/_/docker/) is based on alpine linux, which causes the docker daemon not being able to build images for some reason.

## What is contained
This image is an updated version (trusty -> bionic) from https://github.com/jpetazzo/dind, which gitlab/dind is also based on:
* Up to date docker engine 
* docker-compose
* Current LTS Ubuntu release 