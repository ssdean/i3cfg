#!/bin/bash

charging=$(acpi | grep -E 'Charging|Full' | awk '{print $4}' | sed 's/,//')
discharging=$(acpi | grep -E 'Discharging' | awk '{print $4}' | sed 's/,//')

if [ $charging != "" ]; then
    echo " $charging"
else
    echo " $discharging" 
fi  
