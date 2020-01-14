FROM python:3.7.2-slim

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN apt-get update -y


ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
