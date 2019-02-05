FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

ENV JAVA_HOME /usr/lib/jvm/java-openjdk

# Install Packages
RUN yum update -y; \
    yum install -y java-1.8.0-openjdk-devel wget unzip curl vim python-setuptools sudo; \
    easy_install supervisor; \
    yum clean all

CMD ["/bin/bash"]
