FROM fedora:latest
USER root

MAINTAINER seba
RUN yum install httpd -y
RUN echo "test" > /var/www/html/index.html
EXPOSE 80

CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
