FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_HOME /usr/lib/jvm//java-1.7.0-openjdk-1.7.0.141-2.6.10.1.el7_3.x86_64

# Install Packages
RUN yum update -y; \
    yum install -y java-1.7.0-openjdk wget unzip

CMD ["/bin/bash"]
