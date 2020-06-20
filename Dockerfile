FROM arm32v7/ubuntu:19.10

LABEL maintainer="sandeepjmp@gmail.com"

COPY . /app
WORKDIR /app

RUN apt-get update -y
RUN apt-get install -y python3 pthon3-pip python3-setuptools

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "src/app.py" ]