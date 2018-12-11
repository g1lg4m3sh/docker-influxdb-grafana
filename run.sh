#!/bin/bash
# Data persistency default
sudo mkdir -p /srv/docker/influxdb/data
sudo mkdir -p /srv/docker/grafana/data; chown 472:472 /srv/docker/grafana/data

docker-compose up -d

echo "Grafana: http://127.0.0.1:3000 - admin/admin"

echo
echo "Current database list"
curl -G http://localhost:8086/query?pretty=true --data-urlencode "db=glances" --data-urlencode "q=SHOW DATABASES"

echo
if [[ "$1" == *"newdb"* ]]; then
echo "Creating a new db!"
curl -XPOST 'http://localhost:8086/query' --data-urlencode 'q=CREATE DATABASE mydb'
fi
