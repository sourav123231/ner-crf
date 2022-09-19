FROM python:3.8.0-buster
RUN apt-get update
WORKDIR /application
COPY requirements.txt .
RUN pip install -r requirement.txt
COPY ner-using-random-forest-and-crf.py .
EXPOSE 5000
CMD ["python","ner-using-random-forest-and-crf.py"]
