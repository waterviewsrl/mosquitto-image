#!/bin/ash
set -e


cat mosquitto.conf.template | envsubst > /mosquitto/config/mosquitto.conf 

mosquitto_passwd -b -c  /mosquitto/config/mosquitto.pass $MQTT_USER $MQTT_PASS

# Set permissions
user="$(id -u)"
if [ "$user" = '0' ]; then
	[ -d "/mosquitto" ] && chown -R mosquitto:mosquitto /mosquitto || true
fi

exec "$@"
