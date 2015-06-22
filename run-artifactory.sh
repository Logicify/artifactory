#!/bin/sh

sed -i -e "s|DB_NAME|${DB_NAME}|g"  \
   -e "s|DB_HOST|${DB_HOST}|g"  \
   -e "s|DB_PORT|${DB_PORT}|g"  \
   -e "s|DB_USER|${DB_USER}|g"  \
   -e "s|DB_PASSWORD|${DB_PASSWORD}|g"  \
   ${ARTIFACTORY_HOME}/etc/storage.properties \
;

${ARTIFACTORY_HOME}/bin/artifactory.sh
