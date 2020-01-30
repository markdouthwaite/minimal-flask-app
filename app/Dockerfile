FROM python:3.6.4

EXPOSE 5000

RUN useradd demo

COPY .. /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["gunicorn", "app:app", "--bind", "0.0.0.0:5000", "--log-level=debug", "--threads=1", "--workers=1", "--timeout=30"]