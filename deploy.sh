#!/bin/bash

echo "🔧 Installing PHP dependencies..."
composer install --optimize-autoloader --no-dev

echo "⚙️ Caching config..."
php artisan config:cache

echo "🛠️ Running migrations..."
php artisan migrate --force

echo "📦 Installing Node dependencies..."
npm install

echo "🧱 Building assets with Vite..."
npm run build
