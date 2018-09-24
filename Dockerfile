FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_VER  10
ENV JAVA_HOME /opt/jdk-$JAVA_VER/

# Install Packages
RUN yum update -y; \
    yum install -y wget unzip curl vim python-setuptools; \
    easy_install supervisor
RUN wget https://download.java.net/openjdk/jdk${JAVA_VER}/ri/jdk-${JAVA_VER}_linux-x64_bin_ri.tar.gz -O /opt/jdk.tar.gz

RUN cd /opt; \
    tar -xvf jdk.tar.gz; \
    rm jdk.tar.gz

RUN cd /opt/jdk-$JAVA_VER; \
    alternatives --install /usr/bin/java java /opt/jdk-$JAVA_VER/bin/java 2
RUN yum clean all

CMD ["/bin/bash"]
