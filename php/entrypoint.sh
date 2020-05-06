#/bin/bash
echo `ls /`
echo `pwd`
cd /src
../composer.phar install
echo "Hello Mob Laravel is starting..."
cp .env.example .env
php artisan key:generate
php artisan serve --host=0.0.0.0 --port=80