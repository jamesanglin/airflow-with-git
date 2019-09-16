FROM puckel/docker-airflow
USER root

RUN apt-get update && apt-get install -y git

USER airflow
ENTRYPOINT ["/entry.sh"]