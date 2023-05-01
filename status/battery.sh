POWER_CAPACITY=$(< /sys/class/power_supply/BAT0/energy_full)
POWER_CURRENT=$(< /sys/class/power_supply/BAT0/energy_now)
BATTERY_PERCENT=$(awk -v a=$POWER_CURRENT -v b=$POWER_CAPACITY 'BEGIN { printf("%.0f", (a / b) * 100); }')

if [ $BATTERY_PERCENT -gt 80 ]; then
    LABEL=
elif [ $BATTERY_PERCENT -gt 60 ]; then
    LABEL=
elif [ $BATTERY_PERCENT -gt 40 ]; then
    LABEL=
elif [ $BATTERY_PERCENT -gt 20 ]; then
    LABEL=
else
    LABEL=
fi

echo $(awk -v label=$LABEL -v power=$BATTERY_PERCENT 'BEGIN { printf("%s %d%", label, power) }')
