#Base
FROM python:3.8-alpine
WORKDIR /app
COPY . .
RUN pip3 install -r requirements.txt
EXPOSE 8081
ENTRYPOINT ["python3", "/app/vulnerable-flask-app.py"]
