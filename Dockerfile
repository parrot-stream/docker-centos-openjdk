FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>
              
# Install Packages
RUN yum update -y; \
    yum install -y java-1.7.0-openjdk-devel wget unzip curl vim python-setuptools; \
    easy_install supervisor
RUN yum clean all

ENV JAVA_HOME $(realpath /usr/lib/jvm/java)

CMD ["/bin/bash"]
