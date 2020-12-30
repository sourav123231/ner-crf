FROM continuumio/anaconda3:4.4.0
COPY . /user/app/
EXPOSE 5000
WORKDIR /user/app/
RUN pip install -r requirements.txt
CMD gmb_ner_crf_baseline_with_mlflow.py
