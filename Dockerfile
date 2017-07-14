FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

USER root

ENV JAVA_VER 8u112
ENV JAVA_HOME /opt/jdk1.8.0_112
ENV JAVA_BUILD 15

ENV PATH $JAVA_HOME/bin:$PATH

# Install Packages
RUN yum clean all; \
    yum update -y; \
    yum install -y wget; \
    yum clean all

WORKDIR /opt/docker

# Oracle Java
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/$JAVA_VER-b$JAVA_BUILD/jdk-$JAVA_VER-linux-x64.tar.gz"
RUN tar -xvf  jdk-$JAVA_VER-linux-x64.tar.gz -C ..
RUN alternatives --install /usr/bin/java java $JAVA_HOME/bin/java 2
RUN alternatives --set java $JAVA_HOME/bin/java

CMD ["/bin/bash"]
