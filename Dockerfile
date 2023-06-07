FROM python:3.8

#COPY requirements.txt requirements.txt
#RUN pip install -r requirements.txt

COPY NAE/AppDef.json /etc/NAE/AppDef.json
COPY NAE/screenshot.png /etc/NAE/screenshot.png
RUN touch /etc/NAE/screenshot.txt /etc/NAE/license.txt 

RUN mkdir -p /home/nimbix
COPY src/* /home/nimbix/

WORKDIR /home/nimbix