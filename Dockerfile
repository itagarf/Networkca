
FROM python:3.8-slim-buster

WORKDIR /app
EXPOSE 80

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m", "flask", "run", "--port", "80"]