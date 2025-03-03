# CDC-with-dbt-demo
CDC-with-dbt-demo


# Build notes
There are Docker compose files for the following:

* docker-compose-postgres-primary.yml: standalone Postgres - if you want to manage Postgres separately and/or use this as the basis for
  a production configuration.
* compose.yaml - main development image - based on dbt-postgress, which includes built-in Postgres.

## Python setup
Tried dev containers (see .devcontainer folder), but it wasn't working well w/ Docker.  Now trying to manage Docker myself,
so use python virtual environment dbt-env for Python work.  May need to start pg containers manually?

## Postgres setup
expect:
    see sample.env for environment vars to set for users, pwds, and so on.
    the /build/sql directory has scripts used for setup of default data.

PG container start:
docker compose -f compose-postgres-primary.yaml up
This is working in dbeaver at host.docker.internal

If you'd like to use pgadmin, this can happen with the following:

```
docker pull dpage/pgadmin4
docker run --name pgadmin-container -p 5050:80 -e PGADMIN_DEFAULT_EMAIL=user@domain.com -e PGADMIN_DEFAULT_PASSWORD=catsarecool -d dpage/pgadmin4
```
This shows the stuff we're adding in init.sql is working -- we just can't see it via dbeaver.

# docker run --name my-pgadmin -p 82:80 -e 'PGADMIN_DEFAULT_EMAIL=laiba@yahoo.com' -e 'PGADMIN_DEFAULT_PASSWORD=pass123' -d dpage/pgadmin4


# Sample data
Using the contoso demo enterprise - sample data is available here:

https://github.com/sql-bi/Contoso-Data-Generator-V2-Data/releases/tag/ready-to-use-data

A data generator is available here:

https://www.sqlbi.com/tools/contoso-data-generator/


# Snapshots

See https://en.wikipedia.org/wiki/Slowly_changing_dimension#Type_2:_add_new_row
