FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

# Use simple Python command instead of Gunicorn
CMD ["python", "your-actual-filename.py"]
