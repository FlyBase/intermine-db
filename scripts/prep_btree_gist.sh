#!/bin/sh

su - postgres -c "psql -d template1 -c \"CREATE EXTENSION btree_gist;\"
