FROM php:7.3
MAINTAINER nobishino <ksmith@example.com>
#Composerインストール
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
RUN alias composer="/composer.phar"