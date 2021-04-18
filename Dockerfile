FROM ubuntu:latest
MAINTAINER achistartech

RUN apt-get update
RUN apt-get -y upgrade

# Install apache, PHP, and supplimentary programs. curl and lynx-cur are for debugging the container.
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2

EXPOSE 80

# By default, simply start apache.
CMD /usr/sbin/apache2ctl -D FOREGROUND
