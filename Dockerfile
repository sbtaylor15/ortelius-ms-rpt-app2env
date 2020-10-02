FROM python:3.6-slim-buster
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["waitress-serve"]
CMD ["--port=5000", "final_1:app"]