FROM php:7.3
MAINTAINER nobishino <ksmith@example.com>
#Composerインストール
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"

EXPOSE 8000

CMD alias composer="php /composer.phar"

#mountも含める