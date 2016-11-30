# **centos-java**
___

### Description

This image adds Oracle Java Developmt Kit to a base [**Centos**](https://hub.docker.com/r/centos/centos/) Linux distribution.

The *latest* tag of this image is build using the last available Centos Docker image and the last available Oracle JDK.
You can pull it with:

    docker pull mcapitanio/centos-java


You can also find other images based on different Centos / JDK releases, using different tags in the following form:

    docker pull mcapitanio/centos-java:[centos-release]-[jdk-release]


For example, if you want a Centos 6 release with Oracle JDK release 8u20 you can pull the image with:

    docker pull mcapitanio/centos-java:6-8u20


Run with Docker Compose:

    docker-compose run centos-java java -version


Run with Docker run:

    docker run mcapitanio/centos-java java -version


Available tags:

- Centos 7, Java 8u112 ([7-8u112](https://github.com/mcapitanio/docker-centos-java/blob/7-8u112/Dockerfile), [latest](https://github.com/mcapitanio/docker-centos-java/blob/latest/Dockerfile))
- Centos 7, Java 8u102 ([7-8u102](https://github.com/mcapitanio/docker-centos-java/blob/7-8u102/Dockerfile))
- Centos 7, Java 7u80 ([7-7u80](https://github.com/mcapitanio/docker-centos-java/blob/7-7u80/Dockerfile))
