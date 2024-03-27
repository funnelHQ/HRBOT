FROM python:3.11


WORKDIR /usr/src/app

# Copy the .env file
COPY .env ./

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE $PORT

CMD ["python", "run.py"]
