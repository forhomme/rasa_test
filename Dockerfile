FROM rasa/rasa-sdk:2.0.0rc1

WORKDIR /app

COPY requirements.txt ./

USER root

COPY ./actions /app/actions

COPY .env ./

RUN pip install -r requirements.txt

USER 1001