#!/bin/bash
set -e

echo "Running deployment script..."

composer install --optimize-autoloader --no-dev
php artisan config:cache
php artisan migrate --force

npm install
npm run build

echo "✅ Deployment selesai."
