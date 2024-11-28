FROM python:3.9

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

COPY entrypoint.sh /app/scripts/entrypoint.sh
RUN chmod +x /app/scripts/entrypoint.sh

COPY . . 

ENTRYPOINT ["/app/scripts/entrypoint.sh"]

CMD ["gunicorn", "--bind", "0.0.0.0:9000", "kittygram_backend.wsgi"]