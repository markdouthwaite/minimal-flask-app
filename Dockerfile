FROM python:3.6.4

EXPOSE 5000

RUN useradd demo

COPY . /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python", "app.py"]