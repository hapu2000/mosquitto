# mosquitto
[![GitHub Docker Image CI](https://github.com/hapu2000/mosquitto/workflows/Docker%20Image%20CI/badge.svg)](https://github.com/hapu2000/mosquitto/actions?query=workflow%3A%22Docker+Image+CI%22)
[![GitHub Anchore Container Scan](https://github.com/hapu2000/mosquitto/workflows/Anchore%20Container%20Scan/badge.svg)](https://github.com/hapu2000/mosquitto/actions?query=workflow%3A%22Anchore+Container+Scan%22)

## docker run
64bit
```bash
docker run -p 1883:1883 -e MQTT_USER=<username> -e MQTT_PASS=<password> hapu2000/mosquitto
```

Raspberry Pi 3 (armv7)
```bash
docker run -p 1883:1883 -e MQTT_USER=<username> -e MQTT_PASS=<password> hapu2000/mosquitto:armv7
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
