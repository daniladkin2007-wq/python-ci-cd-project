FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "-c", "from my_app.calculator import add, subtract, multiply, divide; print('Calculator module is ready')"]
