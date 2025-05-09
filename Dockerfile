FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY src/ ./src
COPY tests/ ./tests

# לא מריץ שום דבר – רק בונה את הקוד
