FROM centos:latest
MAINTAINER manju92ng@gmail.com
RUN apt-get update \
    apt install apache2 -y \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf __MACOSX markups-kindle kindel.zip
CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]
EXPOSE 80
