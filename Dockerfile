FROM postgres:9.5

MAINTAINER Josh Goodman <jogoodma@indiana.edu>

RUN mkdir /docker-entrypoint-initdb.d
COPY scripts/prep_btree_gist.sh /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*.sh
