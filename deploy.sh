#!/bin/bash

# Install PHP dependencies
composer install --optimize-autoloader --no-dev

# Cache config & routes
php artisan config:clear
php artisan config:cache
php artisan route:cache
php artisan view:cache

# Run migrations
php artisan migrate --force

# Build frontend
npm ci
npm run build
