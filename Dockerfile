FROM python:latest

WORKDIR /app
ADD ./requirements.txt /
RUN pip3 install -r /requirements.txt --no-cache-dir

EXPOSE 2020

ARG POSTGRES_PASSWORD
ARG POSTGRES_HOST
ARG POSTGRES_DB
ARG POSTGRES_PORT
ARG POSTGRES_USER
ARG POSTGRES_PASSWORD

ARG DEBUG

ARG SERVER_NAME
ARG PROJECT_NAME