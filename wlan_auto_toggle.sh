#!/usr/bin/env bash

# Hacky way of determining ehternet

if [[ $(nmcli c s -a | grep ethernet | head -c1 | wc -c) -ne 0 ]]; then
        logger "[Script] Ethernet connected. Turning Wifi OFF";
        nmcli radio wifi off
else
        logger "[Script] Ethernet disconnected. Turning Wifi ON";
        nmcli radio wifi on
fi
