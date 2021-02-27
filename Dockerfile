FROM debian:buster

RUN apt update && apt-get install -y python g++ make

# nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs

# mvn
RUN echo deb http://ftp.us.debian.org/debian sid main >> /etc/apt/sources.list
RUN apt update && apt-get install -y software-properties-common && apt-add-repository 'deb http://security.debian.org/debian-security stretch/updates main'
RUN apt update && apt-get install -y openjdk-8-jdk maven

CMD /bin/bash
