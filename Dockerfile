# ./Dockerfile
FROM python:3.9

WORKDIR /app
ADD requirements.txt /app

## Install packages
RUN pip install -r requirements.txt

COPY . /app

EXPOSE 8000

CMD ["gunicorn", "--bind","0.0.0.0:8000", "config.wsgi:application"]