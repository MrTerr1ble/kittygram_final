FROM python:3.9

WORKDIR /app

COPY ./requirements/requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt --no-cache-dir

COPY ./scripts/entrypoint.sh /app/scripts/entrypoint.sh
RUN chmod +x /app/scripts/entrypoint.sh

COPY . . 

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]