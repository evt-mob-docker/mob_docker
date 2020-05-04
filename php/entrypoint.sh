#/bin/bash
cd /src
../composer.phar install
echo "Hello Mob Laravel is starting..."
php artisan serve --host=0.0.0.0 --port=8000