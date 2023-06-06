FROM python:3.8

RUN pip3 install -r requirements.txt


COPY NAE/AppDef.json /etc/NAE/AppDef.json
COPY NAE/screenshot.png /etc/NAE/screenshot.png
RUN touch /etc/NAE/screenshot.txt /etc/NAE/license.txt 

RUN mkdir -p /home/nimbix
COPY src/* /home/nimbix/

WORKDIR /home/nimbix