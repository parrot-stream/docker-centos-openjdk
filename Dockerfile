FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

# Install Packages
RUN yum update -y; \
    yum install -y java-1.7.0-openjdk

CMD ["/bin/bash"]
