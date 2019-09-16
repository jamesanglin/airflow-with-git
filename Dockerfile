FROM puckel/docker-airflow

ARG AIRFLOW_USER_HOME=/usr/local/airflow

USER root
RUN apt-get update && apt-get install -y git

USER airflow
WORKDIR ${AIRFLOW_USER_HOME}
ENTRYPOINT ["/entrypoint.sh"]
CMD ["webserver"] # set default arg for entrypoint