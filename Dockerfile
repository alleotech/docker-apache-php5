FROM koder/apache-php-5.3:1.0.0

LABEL org.label-schema.schema-version="1.0" \
    org.label-schema.name="Apache with PHP 5 Docker Image" \
    org.label-schema.vendor="AlleoTech Ltd" \
    org.label-schema.livence="MIT" \
    org.label-schema.build-data="2019040601"

MAINTAINER AlleoTech <admin@alleo.tech>

# Install extra goodies
RUN apt-get update && apt-get -y install mysql-client php5-geoip

# Enable mod_rewrite Apache module
RUN a2enmod rewrite

# Restart Apache service
RUN service apache2 restart

