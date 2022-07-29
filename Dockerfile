from eclipse-mosquitto

RUN apk --no-cache add gettext
COPY mosquitto.conf.template /
COPY docker-entrypoint.sh /
