FROM python:3.10.1

ENV PYTHONBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1


RUN pip install --upgrade pip


WORKDIR /DOCKER_DB

COPY ./requirements.txt  /DOCKER_DB/requirements.txt

RUN pip install -r /DOCKER_DB/requirements.txt

COPY ./DOCKER_DB.py  /DOCKER_DB/DOCKER_DB.py