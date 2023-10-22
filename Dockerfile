FROM eclipse-mosquitto:2-openssl

USER root
COPY ./config /mosquitto/config
COPY ./data /mosquitto/data
COPY ./log /mosquitto/log

RUN chown -R mosquitto:mosquitto /mosquitto

USER mosquitto

EXPOSE ${MQTT_PORT} ${MQTT_DOCKER_PORT}
EXPOSE ${MQTT_WS_PORT} ${MQTT_DOCKER_WS_PORT}