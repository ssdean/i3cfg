VOLUME_PERCENT=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ printf("%d", ($2 * 100)) }')
MUTE=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{ print $3 }')

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

echo $(awk -v label=$LABEL -v volume=$VOLUME_PERCENT 'BEGIN { printf("%s %d%", label, volume) }')
