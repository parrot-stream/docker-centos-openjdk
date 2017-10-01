FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.144-0.b01.el7_4.x86_64

# Install Packages
RUN yum update -y; \
    yum install -y java-1.8.0-openjdk-devel wget unzip curl vim python-setuptools; \
    easy_install supervisor
RUN yum clean all

CMD ["/bin/bash"]
