#/bin/bash
alias composer="php composer.phar"
cd /src
composer install
php artisan serve --host=0.0.0.0 --port=8000