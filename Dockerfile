FROM python:3.7-slim-stretch

RUN apt-get update -y
RUN apt-get install -y python3 python-pip-whl pthon3-pip

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt
#RUN ["chmod", "+x", "dockerEntrypoint.sh"]
CMD [ "python3", "src/app.py" ]