#!/bin/bash

devices=$(bluetoothctl devices Connected | awk '{print $2}')

connected=""
for dev in $devices; do
    if bluetoothctl info "$dev" | grep -q "Connected: yes"; then
        name=$(bluetoothctl info "$dev" | grep "Name:" | cut -d ' ' -f2-)
        connected+="$name, "
    fi
done

if [ -n "$connected" ]; then
    # Remove trailing comma and space
    connected=${connected::-2}
    echo " $connected"
else
    echo " no devices"
fi
