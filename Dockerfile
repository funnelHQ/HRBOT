
FROM python:3.11


WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .


ENV PORT=5000


EXPOSE $PORT

CMD ["python", "run.py"]
