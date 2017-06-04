FROM python:3.5-alpine
VOLUME ["/app/data"]
COPY . /app
WORKDIR /app
ENV PYTHONPATH ${PYTHONPATH}:/app
ENV FLASK_APP pynanowit
RUN pip install -r requirements.txt
RUN flask initdb
CMD ["flask", "run"]
