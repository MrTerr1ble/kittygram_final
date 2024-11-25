#!/bin/bash
echo "Apply database migrations"
python manage.py migrate

echo "Collect static files"
python manage.py collectstatic --noinput

echo "Starting server"
python manage.py runserver 0.0.0.0:9000
