FROM python:3.5.2-alpine

RUN pip install sphinx
WORKDIR /root