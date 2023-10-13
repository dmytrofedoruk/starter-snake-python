FROM python:3.10.6-slim

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENV PORT=8000

EXPOSE 8000
CMD [ "python", "server.py" ]