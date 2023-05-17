FROM python:3.10-slim
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
COPY . .

ENTRYPOINT ["sh", "entrypoint.sh"]

CMD flask run -h 0.0.0.0 -p 8085

