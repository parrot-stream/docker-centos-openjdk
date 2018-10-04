FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_HOME /opt/java-se-9-ri/jdk-9/

# Install Packages
RUN yum update -y; \
    yum install -y wget unzip curl vim python-setuptools sudo; \
    easy_install supervisor
RUN wget https://download.java.net/openjdk/jdk9/ri/jdk-9+181_linux-x64_ri.zip -O /opt/jdk.zip

RUN cd /opt; \
    unzip /opt/jdk.zip; \
    rm /opt/jdk.zip

RUN cd /opt/java-se-9-ri/jdk-9; \
    alternatives --install /usr/bin/java java /opt/java-se-9-ri/jdk-9/bin/java 2
RUN yum clean all

CMD ["/bin/bash"]
