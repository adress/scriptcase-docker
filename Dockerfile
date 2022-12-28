FROM ubuntu:20.04

RUN apt-get update && \
      apt-get -y install sudo

RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

# USER docker
# CMD /bin/bash

RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update

RUN apt-get install -y php8.1

RUN apt-get install -y php8.1-curl
RUN apt-get install -y php8.1-gd
RUN apt-get install -y php8.1-bcmath
RUN apt-get install -y php8.1-cgi
RUN apt-get install -y php8.1-ldap
RUN apt-get install -y php8.1-mbstring
RUN apt-get install -y php8.1-xml
RUN apt-get install -y php8.1-soap
RUN apt-get install -y php8.1-xsl
RUN apt-get install -y php8.1-zip


