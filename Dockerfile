FROM python:3.5-alpine
VOLUME ["/app/data"]
EXPOSE 5000
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENV PYTHONPATH ${PYTHONPATH}:/app
ENV FLASK_APP pynanowit
CMD ["./run.sh"]
