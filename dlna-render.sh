#!/bin/sh

NAME=gmediarender
DAEMON=/usr/bin/$NAME


if [ -z "$UPNP_DEVICE_NAME" ]; then
 UPNP_DEVICE_NAME="HomePod-$(hostname)"
fi

$DAEMON -f "$UPNP_DEVICE_NAME"
