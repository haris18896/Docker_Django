FROM python:3.11.6-alpine3.18
LABEL maintainer="Docker_Django_Container"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED 1

WORKDIR /app
COPY ./requirements.txt /tmp/requirements.txt

RUN pip install -r requirements.txt
COPY .app /app/

EXPOSE 8000
ENV PATH="/py/bin:$PATH"

USER django-user



