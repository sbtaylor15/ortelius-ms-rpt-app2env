FROM python:3.6-slim-buster
ENV PYTHONUNBUFFERED True
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./
RUN pip install -r requirements.txt
EXPOSE 8000
CMD exec waitress serve --listen "*:8000" "happy-api.wsgi:application"