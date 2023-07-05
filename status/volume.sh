#!/bin/bash

TMP_DIR="/tmp/i3status"
VOLUME_STATUS_FILE="/tmp/i3status/current_volume"

if [ ! -e $VOLUME_STATUS_FILE ]; then
    sleep 1

    if [ ! -e $TMP_DIR ]; then
        mkdir $TMP_DIR
    fi

    touch $VOLUME_STATUS_FILE
fi

WPCTL_STRING=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)

if [ -z $WPCTL_STRING ]; then
    WPCTL_STRING=$(<$VOLUME_STATUS_FILE)
fi

IFS=' ' read -ra split <<< $WPCTL_STRING
VOLUME=${split[1]}
MUTE=${split[2]}
VOLUME_PERCENT=$(awk -v var=$VOLUME 'BEGIN { printf("%d", (var * 100)) }')

if [ -z $MUTE ]; then
    if [ $VOLUME_PERCENT -gt 55 ]; then
        LABEL=
    elif [ $VOLUME_PERCENT -gt 1 ]; then
        LABEL=
    else 
        LABEL=
    fi
else
    LABEL=
fi

echo $(awk -v label=$LABEL -v volume=$VOLUME_PERCENT 'BEGIN { printf("%s %s%", label, volume) }')

echo "Volume: $VOLUME $MUTE" > $VOLUME_STATUS_FILE
