FROM python:3.11-slim

WORKDIR /usr/src/app
RUN chmod 755 /usr/src/app  # More secure permissions

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
