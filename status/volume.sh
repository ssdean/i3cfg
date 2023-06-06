WPCTL_STRING=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)
IFS=' ' read -ra split <<< $WPCTL_STRING
VOLUME_PERCENT=$(awk -v var=${split[1]} 'BEGIN { printf("%d", (var * 100)) }')
MUTE=${split[2]}

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
