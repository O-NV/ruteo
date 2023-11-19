FROM postgis/postgis

# Install pgRouting package
RUN apt-get update \
    && apt-get install -y \
        postgresql-13-pgrouting

# Perform any additional steps such as configuring the database
