# CDC-with-dbt-demo
CDC-with-dbt-demo


# Build notes
Docker compose expects volume pg_data.

```
docker volume create pg_data
```

## Python setup
Tried dev containers (see .devcontainer folder), but it wasn't working well w/ Docker.  Now trying to manage Docker myself,
so use python virtual environment dbt-env for Python work.  May need to start pg containers manually?

## Postgres setup
expect:
    see sample.env for environment vars to set for users, pwds, and so on.
    the /build/sql directory has scripts used for setup of default data.

PG container start:
docker compose -f docker-compose-postgres-primary.yml up
This is working in dbeaver at host.docker.internal

If you'd like to use pgadmin, this can happen with the following:

```
docker pull dpage/pgadmin4
docker run --name pgadmin-container -p 5050:80 -e PGADMIN_DEFAULT_EMAIL=user@domain.com -e PGADMIN_DEFAULT_PASSWORD=catsarecool -d dpage/pgadmin4
```
This shows the stuff we're adding in init.sql is working -- we just can't see it via dbeaver.

# docker run --name my-pgadmin -p 82:80 -e 'PGADMIN_DEFAULT_EMAIL=laiba@yahoo.com' -e 'PGADMIN_DEFAULT_PASSWORD=pass123' -d dpage/pgadmin4