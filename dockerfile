FROM python:3.12

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Define el comando por defecto para correr la aplicación
CMD ["python", "src/main.py"]