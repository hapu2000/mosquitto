# mosquitto

## docker run
```
docker run -p 1883:1883 -e MQTT_USER=<username> -e MQTT_PASS=<password> hapu2000/mosquitto
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
    environment:
      MQTT_USER: <username>
      MQTT_PASS: <password>
```
