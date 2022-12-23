# FROM debian:11
FROM python:3.9-slim-buster

ENV DEBIAN_FRONTEND=noninteractive

ADD app /app

RUN \
    pip3 install flask

WORKDIR /app

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]




