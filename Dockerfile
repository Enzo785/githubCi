# Start with the FastAPI base image
#FROM tiangolo/uvicorn-gunicorn-fastapi:python3.10
#FROM --platform=linux/amd64 tiangolo/uvicorn-gunicorn-fastapi:python3.9

FROM python:3.9

WORKDIR /app
COPY . /app

RUN pip install --no-cache-dir -r requirements.txt
#RUN pip install --no-cachedir -r req
EXPOSE 8001
#COPY .env /app
# Set environment variables from .env file
ENV ENV_FILE_LOCATION=/app/.env
