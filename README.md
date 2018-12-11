# Docker-compose files for a simple uptodate
# InfluxDB
# + Grafana stack
# + Telegraf

Clone repo:

```
git clone https://github.com/nicolargo/docker-influxdb-grafana.git
cd docker-influxdb-grafana
docker pull grafana/grafana
docker pull influxdb
docker pull telegraf
```

Run:

```
./run.sh
```

(OPTIONAL, recommended):
Run with new db

```
./run.sh newdb
```

Show logs:

```
docker-compose logs
```

Stop it:

```
docker-compose stop
docker-compose rm
```

Update it:

```
git pull
docker pull grafana/grafana
docker pull influxdb
docker pull telegraf
```

If you want to run Telegraf, edit the telegraf.conf to yours needs and:

```
docker exec telegraf telegraf
```
