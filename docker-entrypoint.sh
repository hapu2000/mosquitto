#!/usr/bin/env sh
set -eu

<<<<<<< HEAD
/usr/bin/mosquitto_passwd -b /etc/mosquitto/conf.d/passwd ${MQTT_USER} ${MQTT_PASS}

envsubst '${MQTT_USER}' < /etc/mosquitto/conf.d/acl.template > /etc/mosquitto/conf.d/acl
=======
/usr/bin/mosquitto_passwd -b /etc/mosquitto/conf.d/passwd "${MQTT_USER}" "${MQTT_PASS}"

envsubst "${MQTT_USER}" < /etc/mosquitto/conf.d/acl.template > /etc/mosquitto/conf.d/acl
>>>>>>> 13695470cf115e9c69f5e36c1b9f400bef430363

exec "$@"
