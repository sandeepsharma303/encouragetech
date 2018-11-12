FROM ubuntu:14.04
RUN  apt-get update && apt-get install wget git  curl  vim apache2
COPY index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl/", "-DFOREGROUND"]

