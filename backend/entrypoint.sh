#!/bin/bash

echo "Apply database migrations"
python manage.py migrate

echo "Ensure collected_static directory exists"
mkdir -p /app/collected_static

echo "Collect static files"
python manage.py collectstatic --noinput

exec "$@"