FROM python:3.6-slim-buster
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8080
ENTRYPOINT ["waitress-serve"]
CMD ["--port=8080", "final_1:app"]