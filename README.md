# **centos-openjdk**
___

### Description

This image adds OpenJDK to a base [**Centos**](https://hub.docker.com/r/centos/centos/) Linux distribution.

The *latest* tag of this image is build using the last available Centos Docker image and the last available Oracle JDK.
You can pull it with:

    docker pull parrotcdc/centos-openjdk


You can also find other images based on different OpenJDK releases, using different tags in the following form:

    docker pull parrotcdc/centos-openjdk:[openjdk-release]


For example, if you want a Centos with OpenJDK release 8 you can pull the image with:

    docker pull parrotcdc/centos-openjdk:8


Run with Docker Compose:

    docker-compose run centos-openjdk java -version


Run with Docker run:

    docker run parrotcdc/centos-openjdk java -version


Available tags:

- OpenJDK 8 ([7-8u112](https://github.com/parrotcdc/docker-centos-openjdk/blob/8/Dockerfile), [latest](https://github.com/parrotcdc/docker-centos-openjdk/blob/latest/Dockerfile))
- OpenJDK 7 ([7-8u102](https://github.com/parrotcdc/docker-centos-openjdk/blob/7/Dockerfile))
