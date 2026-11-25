FROM python:3.11-slim

WORKDIR /app
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY requirements.txt . 
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000
# Adapter main:app au module et a l'objet FastAPI du depot
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
