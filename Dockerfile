FROM puckel/docker-airflow

ARG AIRFLOW_USER_HOME=/usr/local/airflow

USER root
RUN apt-get update && apt-get install -y git

USER airflow