FROM alpine:3.12
RUN apk add --no-cache mosquitto=1.6.12-r0 gettext=0.20.2-r0
COPY src/etc/mosquitto /etc/mosquitto
COPY ./docker-entrypoint.sh /
EXPOSE 1883
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/usr/sbin/mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]
