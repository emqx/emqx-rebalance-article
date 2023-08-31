#!/bin/bash
set -xe

ARCH="$(uname -m)"

if [ "$ARCH" == "x86_64" ]; then
    BIN_NAME=mqttx-cli-linux-x64
elif [ "$ARCH" == "arm64" ]; then
    BIN_NAME=mqttx-cli-linux-arm64
elif [ "$ARCH" == "aarch64" ]; then
    BIN_NAME=mqttx-cli-linux-arm64
else
    echo "Unsupported arch: $ARCH"
    exit 1
fi

curl -LO https://www.emqx.com/en/downloads/MQTTX/v${VERSION}/${BIN_NAME}
install "$BIN_NAME" /usr/local/bin/mqttx
