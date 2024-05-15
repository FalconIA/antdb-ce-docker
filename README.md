# AntDB Community Edition Docker Image

Docker Images based on [AntDB Community Edition](http://www.antdb.net/antdb-t) binaries.

# How to use this image

## start a antdb via [docker-compose](https://github.com/docker/compose)

Example docker-compose.yml for antdb-ce:
```yml
# Use antdb/antdb user/password credentials
version: '3.7'

services:

  antdb:
    image: falconia/antdb-ce:latest
    container_name: antdb
    restart: always
    environment:
      - ANTDB_USER=antdb
      - ANTDB_PASSWORD=antdb
      - ANTDB_MAX_CONNECTIONS=1000
      - ANTDB_LISTEN_ADDRESSES=*
    ports:
      - 6655:6655
    volumes:
      - ./data:/opt/antdb/data
```
