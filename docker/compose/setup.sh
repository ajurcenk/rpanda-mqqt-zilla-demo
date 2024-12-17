#!/bin/bash
set -e

NAMESPACE="${NAMESPACE:-zilla-mqtt-kafka-broker}"
export ZILLA_VERSION="${ZILLA_VERSION:-latest}"
export KAFKA_BOOTSTRAP_SERVER="redpanda:9092"

# Start or restart Zilla

docker compose -p $NAMESPACE up  -d --force-recreate --no-deps

