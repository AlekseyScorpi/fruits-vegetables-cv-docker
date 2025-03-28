FROM postgres:14

ARG SMART_SCALES_PASSWORD

COPY ./db_init.sql.template /docker-entrypoint-initdb.d/01_db_init.sql.template
COPY ./db_tables_init.sql /docker-entrypoint-initdb.d/02_db_tables_init.sql

RUN apt-get update && apt-get install -y gettext && \
    SMART_SCALES_PASSWORD=${SMART_SCALES_PASSWORD} envsubst < /docker-entrypoint-initdb.d/01_db_init.sql.template > /docker-entrypoint-initdb.d/01_db_init.sql && \
    rm /docker-entrypoint-initdb.d/01_db_init.sql.template

VOLUME /var/lib/postgresql/data

EXPOSE 5432