FROM hypriot/rpi-alpine-scratch

MAINTAINER Petter Abrahamsson <petter@jebus.nu>

RUN apk update && apk add curl ca-certificates php-mysqli php-curl php-gd php-opcache php-apache2 php-zlib php-xml php-xsl apache2

COPY httpd.conf /etc/apache2/httpd.conf
VOLUME /var/www/html
WORKDIR /var/www/html
EXPOSE 80 443
CMD ["httpd", "-DFOREGROUND"]

