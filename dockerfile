FROM python:3.13

COPY . ./app
RUN mkdir /app/database
RUN mkdir /app/ingest
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "./app.py"]