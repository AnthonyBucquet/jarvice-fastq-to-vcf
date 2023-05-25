FROM python:3.8

COPY NAE /etc
RUN touch /etc/NAE/screenshot.txt /etc/NAE/license.txt 

RUN mkdir -p /opt/src
WORKDIR /opt/src
COPY src .

