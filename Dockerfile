FROM centos:centos7
RUN apt update -y
RUN apt install httpd -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
