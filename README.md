# tpl-helm-auto

Template for a project that automatically builds container images and helm charts with project source code baked into the image. 

The basic version of this project uses a [nginx:alpine](https://hub.docker.com/_/nginx) image base to host a simple static website.

### Local Development

All files in src/ will be hosted at the web root.

Build the image with docker compose.

```shell
docker compose build
```

Launch it.

```shell
docker compose up
```

Site will be available at [http://localhost:8080/](http://localhost:8080/)

### Extending this template

The main way you would extend this is by updating the DockerFile to load a different base image and then modifying it from there to suit your needs, 

### Github actions

This project contains 2 github actions that can be used to build the image and helm chart and deploy them in various ways when a release is published.

ghcr-docker-publish.yml is a standard docker build action that will build and push the image to GHCR or Docker Hub and attach the chart to the release.

ecr-s3-publish.yml is designed to publish images to a private AWS ECR repository and a helm repository hosted on s3.  [guide](https://github.com/jgz/s3-auth-proxy#using-helm-s3-to-create-a-private-helm-chart-repo-that-can-be-used-with-flux2)
