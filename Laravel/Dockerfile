# ここはコメントです
FROM ubuntu:18.04
MAINTAINER nobishino <ksmith@example.com>

RUN apt-get update && apt-get install -y php
#Composerインストール
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php composer-setup.php
RUN php -r "unlink('composer-setup.php');"
