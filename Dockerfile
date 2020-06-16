FROM python:3

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt
RUN ["chmod", "+x", "dockerEntrypoint.sh"]
EXPOSE 5000
CMD python3 src/app.py