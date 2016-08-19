FROM centos

MAINTAINER Matteo Capitanio <matteo.capitanio@gmail.com>

USER root

#ENV http_proxy http://10.0.2.2:3128
#ENV https_proxy http://10.0.2.2:3128


ENV HADOOP_VER 2.7.2
ENV JAVA_VER 7u80
ENV JAVA_HOME /opt/jdk1.7.0_80
ENV HADOOP_HOME /opt/hadoop
ENV HADOOP_PREFIX $HADOOP_HOME
ENV HADOOP_COMMON_HOME $HADOOP_HOME
ENV HADOOP_COMMON_LIB_NATIVE $HADOOP_PREFIX/lib/native
ENV HADOOP_CONF_DIR $HADOOP_PREFIX/etc/hadoop
ENV YARN_CONF_DIR $HADOOP_CONF_DIR

ENV PATH $JAVA_HOME/bin:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH

# Install needed packages
RUN yum install -y deltarpm
RUN yum update -y; yum clean all
RUN yum install -y wget rsync which openssh-clients openssh-server python-setuptools
RUN easy_install supervisor

ADD ./etc /etc

WORKDIR /opt/docker

# Oracle Java
COPY install-java.sh .
RUN chmod +x install-java.sh; \
    ./install-java.sh

# Apache Hadoop
COPY ./hadoop-$HADOOP_VER ./hadoop-$HADOOP_VER
COPY install-hadoop.sh .
RUN chmod +x install-hadoop.sh; \
    ./install-hadoop.sh

#COPY docker-entrypoint.sh $HADOOP_HOME/bin
#RUN chmod +x $HADOOP_HOME/bin/docker-entrypoint.sh

# Hdfs ports
EXPOSE 50010 50020 50070 50075 50090
# Mapred ports
EXPOSE 19888
#Yarn ports
EXPOSE 8030 8031 8032 8033 8040 8042 8088
#Other ports
EXPOSE 49707 22 

VOLUME ["/hdfs"]

COPY bootstrap.sh $HADOOP_HOME/bin

ENTRYPOINT ["supervisord", "-n"]
