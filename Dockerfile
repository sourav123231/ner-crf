FROM python:3.8.0-buster
WORKDIR /application
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY 
CMD ["python","gmb_ner_crf_baseline_with_mlflow.py"]
