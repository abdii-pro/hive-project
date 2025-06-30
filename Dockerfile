FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

# Install dependencies including derby (needed for Hive embedded metastore)
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk wget tar ssh nano git derby && \
    apt-get clean

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Install Hadoop
ENV HADOOP_VERSION=3.3.6
RUN wget https://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz && \
    tar -xzvf hadoop-${HADOOP_VERSION}.tar.gz -C /opt && \
    rm hadoop-${HADOOP_VERSION}.tar.gz

ENV HADOOP_HOME=/opt/hadoop-${HADOOP_VERSION}
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

# Install Hive
ENV HIVE_VERSION=3.1.3
RUN wget https://archive.apache.org/dist/hive/hive-${HIVE_VERSION}/apache-hive-${HIVE_VERSION}-bin.tar.gz && \
    tar -xzvf apache-hive-${HIVE_VERSION}-bin.tar.gz -C /opt && \
    rm apache-hive-${HIVE_VERSION}-bin.tar.gz

ENV HIVE_HOME=/opt/apache-hive-${HIVE_VERSION}-bin
ENV PATH=$PATH:$HIVE_HOME/bin
