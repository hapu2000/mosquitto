FROM alpine:3.12
<<<<<<< HEAD
RUN apk add --no-cache mosquitto gettext
=======
RUN apk add --no-cache mosquitto=1.6.9-r0 gettext=0.20.2-r0
>>>>>>> 13695470cf115e9c69f5e36c1b9f400bef430363
COPY src/etc/mosquitto /etc/mosquitto
COPY ./docker-entrypoint.sh /
EXPOSE 1883
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
