mosquitto
=========

[![GitHub Super-Linter](https://github.com/hapu2000/mosquitto/workflows/Super-Linter/badge.svg)](https://github.com/marketplace/actions/super-linter)

## docker run
```bash
docker run -p 1883:1883 -e MQTT_USER=<username> -e MQTT_PASS=<password> hapu2000/mosquitto
```

## docker-compose
```text
version: '3'
services:
  mosquitto:
    image: hapu2000/mosquitto
    restart: always
    ports:
      - 1883:1883
    environment:
      MQTT_USER: <username>
      MQTT_PASS: <password>
```
