FROM python:3.7

ADD . /app
WORKDIR /app

RUN pip install flask gunicorn

CMD ["gunicorn", "-b", "0.0.0.0:8080", "server:app"]