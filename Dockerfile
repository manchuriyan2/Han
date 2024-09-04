FROM python:3.11-slim

WORKDIR /usr/src/app

# Install build dependencies
RUN apt-get update && apt-get install -y build-essential

# Upgrade pip
RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .
CMD ["bash", "start.sh"]
