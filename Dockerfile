FROM python:3.8.6-slim
ENV PYTHONUNBUFFERED True
EXPOSE 5000
WORKDIR /app
ADD . /app

RUN pip install -r requirements.txt
CMD ["waitress-serve","--port=5000", "msapi:app"]