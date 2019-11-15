# mosquitto

## MQTT credentials
username: mqtt
password: password
TCP port: 1883

## docker pull
```
docker pull hapu2000/mosquitto
```

## docker-compose
```
version: '3'
services:
  mosquitto:
    image: hapu2000/mosquitto
    restart: always
    ports:
      - 1883:1883
```
