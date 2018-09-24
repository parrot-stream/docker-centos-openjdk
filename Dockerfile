FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_VER  10
ENV JAVA_FULL_VER 10.0.2
ENV JAVA_HOME /opt/jdk-$JAVA_FULL_VER/

# Install Packages
RUN yum update -y; \
    yum install -y wget unzip curl vim python-setuptools; \
    easy_install supervisor

RUN wget https://download.java.net/java/GA/jdk${JAVA_VER}/${JAVA_FULL_VER}/19aef61b38124481863b1413dce1855f/13/openjdk-${JAVA_FULL_VER}_linux-x64_bin.tar.gz -O /opt/jdk.tar.gz

RUN cd /opt; \
    tar -xvf jdk.tar.gz; \
    rm jdk.tar.gz

RUN cd /opt/jdk-$JAVA_FULL_VER; \
    alternatives --install /usr/bin/java java /opt/jdk-$JAVA_FULL_VER/bin/java 2
RUN yum clean all

CMD ["/bin/bash"]
