FROM centos
MAINTAINER achistartec
RUN Yum install httpd -y
RUN ECHO "This is a Test Webserver" > /var/www/html
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 8000
