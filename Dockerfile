FROM python:3.7.7-slim-buster

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt
RUN ["chmod", "+x", "dockerEntrypoint.sh"]
EXPOSE 5000
CMD [ "python3", "src/app.py" ]