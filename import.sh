#!/bin/sh
# Example
CLUSTER=yourcluster-shard-0/yourcluster-shard-00-00-pmvyt.mongodb.net:27017,yourcluster-shard-00-01-pmvyt.mongodb.net:27017,yourcluster-shard-00-02-pmvyt.mongodb.net:27017
FILENAME=contacts.csv
DATABASE=hackathon
COLLECTION=contacts
USER=youruserid
PASSWORD=yourpassword
source .env

mongoimport --host ${CLUSTER} --ssl --username yourcluster --password ${PASSWORD} --authenticationDatabase admin --db ${DATABASE} --collection ${COLLECTION} --type csv --file ${FILENAME} --headerline
