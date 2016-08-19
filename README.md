# **centos-java**
___

### Description
___

This image runs the official [*Apache Hadoop*](http://hadoop.apache.org/) in a **pseudo distributed** mode.

The *latest* tag of this image is build with the [last stable](http://hadoop.apache.org/releases.html) release of Apache Hadoop.

You can pull it with:

    docker pull mcapitanio/hadoop


You can also find other images based on different Apache Hadoop releases, using a different tag in the following form:

    docker pull mcapitanio/hadoop:[hadoop-release]


For example, if you want Apache Hadoop release 2.6.4 you can pull the image with:

    docker pull mcapitanio/hadoop:2.6.4


Run with Docker Compose:

    docker-compose run hadoop


Run with Docker run:

    docker run mcapitanio/hadoop


Available tags:

- Apache Hadoop 2.7.2 (2.7.2, [latest](https://github.com/mcapitanio/docker-hadoop/blob/latest/Dockerfile))
- Apache Hadoop 2.6.4 ([2.6.4](https://github.com/mcapitanio/docker-hadoop/blob/2.6.4/Dockerfile))