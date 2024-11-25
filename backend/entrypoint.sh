#!/bin/bash
echo "Apply database migrations"
python manage.py migrate

echo "Collect static files"
python manage.py collectstatic --noinput

python gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi
