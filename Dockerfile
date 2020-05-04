FROM php:7.3-fpm
LABEL nobishino <ksmith@example.com>

RUN apt-get update && apt-get install -y zip unzip
RUN cd / && php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \ 
    && php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849f5eff0d4b4e4c79ff1609dd1e613307e16318854d24ae64f26d17af3ef0bf7cfb710ca74755a') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" \
    && php composer-setup.php && php -r "unlink('composer-setup.php');"

EXPOSE 8000