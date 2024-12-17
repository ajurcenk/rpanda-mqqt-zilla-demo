# mqtt.redpanda.broker

This is the example Redpanda MQQT usinf zilla

## Running locally

This example can be run using Docker compose or Kubernetes. The setup scripts are in the [compose](./docker/compose)

### Setup

Start the docker compose


```bash
./setup.sh
```

### Start the Kafka topic consumer

```bash
docker exec redpanda rpk topic consume mqtt-devices
```

### Start MQTT subscription

```bash
docker exec mosquitto  mosquitto_sub  -t 'device/01' -d -p 7183 -h zilla  -V '5'
```

### Produce MQTT data

```bash
docker exec mosquitto mosquitto_pub  -t 'device/01' -d -p 7183 -h zilla  -V '5' -m 'Hello-1' --repeat-delay 1 --repeat 7
```

### Teardown

The `teardown.sh` script will remove any resources created.

```bash
./teardown.sh
```
