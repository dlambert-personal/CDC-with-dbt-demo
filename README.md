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
      POSTGRES_USER: postgres
      POSTGRES_DB: dbtcdcdb
      POSTGRES_PASSWORD: postgres
      schema dbt

PG container start:
docker compose -f docker-compose-postgres-primary.yml up
This is working in dbeaver at host.docker.internal

# docker run --name my-pgadmin -p 82:80 -e 'PGADMIN_DEFAULT_EMAIL=laiba@yahoo.com' -e 'PGADMIN_DEFAULT_PASSWORD=pass123' -d dpage/pgadmin4