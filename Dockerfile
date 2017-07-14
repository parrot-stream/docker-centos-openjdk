FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.131-3.b12.el7_3.x86_64/jre

# Install Packages
RUN yum update -y; \
    yum install -y java-1.8.0-openjdk wget unzip

CMD ["/bin/bash"]
