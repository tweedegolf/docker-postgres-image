# PostgresSQL with extensions docker image
This repository contains the source docker config for a postgresql image with
some often used additional extensions installed. It can be used for both
production and development purposes. Currently these versions are supported
with the tags listed:

* 16: `16`, `latest`
* 15: `15`
* 14: `14`

The following extensions are available within PostgreSQL:

* postgis - https://postgis.net/
* pgrouting - https://pgrouting.org/
* pg_rational - https://github.com/begriffs/pg_rational
* icu_ext - https://github.com/dverite/icu_ext
* toastinfo - https://github.com/credativ/toastinfo
* Supplied Modules - https://www.postgresql.org/docs/current/contrib.html
