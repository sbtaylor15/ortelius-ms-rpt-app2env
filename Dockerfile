FROM python:3.6-slim-buster
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["waitress-serve"]
CMD ["--port=5000", "final_1:app"]