#!/bin/sh
# Usage: ./backup-db.sh <username> <password> <database container id or name>

docker run --rm --link $3:db tutum/mysql:5.6 mysqldump -u$1 -p$2 -hdb sonar >backup/$(date +%Y%m%d-%H%M)-sonar.sql

# For Windows users
# docker network might be obtainerd via docker network ls
# docker run --rm --link <sonar db container id or name>:db --net <docker network> tutum/mysql:5.6 mysqldump -uroot -p123456 -hdb sonar >backup/db-sonar.sql