FROM python:3.6-slim-buster
ENV PYTHONUNBUFFERED True
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
RUN pip install -r requirements.txt
EXPOSE 5000
CMD exec waitress-serve --listen=*:5000 --url-scheme=https "app:api"