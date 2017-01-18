FROM python:3.5.2-alpine

RUN pip install sphinx

COPY ./source /root/source

WORKDIR /root

ENTRYPOINT ["/usr/local/bin/sphinx-build", "-b", "html", "source/", "build/"]