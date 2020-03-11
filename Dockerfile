FROM resin/rpi-raspbian:latest
ENTRYPOINT []

RUN apt-get update && \
    apt-get -qy install curl \
                build-essential python python-pip \
                python-dev python-pip gcc make \
                ca-certificates

RUN pip install rpi.gpio

#CMD ["curl", "https://docker.com"]