FROM puckel/docker-airflow
USER root

RUN apt-get install -y git

USER airflow
ENTRYPOINT ["/entry.sh"]