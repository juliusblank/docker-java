#
FROM ubuntu:14.04
MAINTAINER Julius Blank <julius.blank@zeiss.com>

RUN apt-get -y update && apt-get -y install wget

RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn/java/jdk/7u17-b02/jdk-7u17-linux-x64.tar.gz
RUN mkdir /opt/jdk
RUN tar -zxf jdk-7u17-linux-x64.tar.gz -C /opt/jdk
RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_17/bin/java 100
RUN update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_17/bin/java 100


