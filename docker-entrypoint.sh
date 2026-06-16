#!/bin/sh
set -e

cd /app

if [ ! -d "node_modules" ] || [ -z "$(ls -A node_modules 2>/dev/null)" ]; then
    echo "==> Installing npm dependencies..."
    npm install
fi

echo "==> Building static assets..."
NODE_ENV=production npx gulp deploy

echo "==> Starting serve..."
exec "$@"
