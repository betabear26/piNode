FROM arm32v7/ubuntu:19.10

LABEL maintainer="sandeepjmp@gmail.com"

RUN apt-get update -y && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y python3 python3-pip

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "src/app.py" ]