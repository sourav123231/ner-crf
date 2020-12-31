FROM python:3.8.0-buster
RUN apt-get update
WORKDIR /application
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY /gmb_ner_crf_baseline_with_mlflow.ipynb
EXPOSE 5000
CMD ["python","gmb_ner_crf_baseline_with_mlflow.ipynb"]
