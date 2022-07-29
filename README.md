# mosquitto-image

This mqtt image generates a config file from a template and envronment variables.
Currently it is possible to configure TCP and WebSockets ports, persistence and login credentials for a single user

``` bash
docker run -it -e MQTT_TCP_PORT=1883 -e MQTT_WS_PORT=1884 -e MQTT_PERSISTENCE=false -e MQTT_USER=user -e MQTT_PASS=p@ss waterview/mosquitto
```

