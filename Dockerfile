FROM postgres:9.4

MAINTAINER Josh Goodman <jogoodma@indiana.edu>

RUN mkdir -p /docker-entrypoint-initdb.d
COPY scripts/prep_btree_gist.sh /docker-entrypoint-initdb.d/
COPY scripts/init_intermine_dbs.sql /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*.sh && \
    chmod 664 /docker-entrypoint-initdb.d/*.sql
