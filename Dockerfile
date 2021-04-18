FROM centos
MAINTAINER achistartec
RUN Yum install httpd -y
RUN echo "This is a Test Webserver" >> /var/www/html/index.html
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 8000
