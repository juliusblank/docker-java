# Ubuntu based Java image
FROM ubuntu:14.04
MAINTAINER Julius Blank <julius.blank@zeiss.com>

LABEL JAVA_VERSION=1.7.0_17
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -yqq update && \
    apt-get -yqq install wget unzip

ADD jdk-7u17-linux-x64.tar.gz /opt/jdk
RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.7.0_17/bin/java 100 && \
    update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.7.0_17/bin/javac 100

CMD [ "java", "-version" ]
