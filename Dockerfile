FROM python:3.8

COPY NAE/AppDef.json /etc/NAE/AppDef.json
COPY NAE/screenshot.png /etc/NAE/screenshot.png
RUN touch /etc/NAE/screenshot.txt /etc/NAE/license.txt 

RUN mkdir -p /opt/src
WORKDIR /opt/src
COPY src/main.py /opt/src/main.py

