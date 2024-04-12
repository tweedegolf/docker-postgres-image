ARG PG_MAJOR

FROM postgres:${PG_MAJOR}

ARG PG_MAJOR
ENV PG_MAJOR ${PG_MAJOR}

ENV POSTGIS_VERSION 3

RUN apt-get update -y \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    postgis \
    postgresql-${PG_MAJOR}-postgis-${POSTGIS_VERSION} \
    postgresql-${PG_MAJOR}-postgis-${POSTGIS_VERSION}-scripts \
    postgresql-${PG_MAJOR}-pgrouting \
    postgresql-${PG_MAJOR}-pgrouting-scripts \
    postgresql-${PG_MAJOR}-rational \
    postgresql-${PG_MAJOR}-icu-ext \
    postgresql-${PG_MAJOR}-toastinfo \
  && rm -rf /var/lib/apt/lists/*
