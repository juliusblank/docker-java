#
FROM ubuntu:14.04
MAINTAINER Julius Blank <julius.blank@zeiss.com>

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list
RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 select true" | sudo /usr/bin/debconf-set-selections
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN apt-get update
RUN apt-get install -y software-properties-common unzip
RUN apt-get -y install oracle-java7-installer


