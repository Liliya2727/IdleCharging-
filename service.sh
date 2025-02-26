#!/bin/sh
while [ -z "$(getprop sys.boot_completed)" ]; do
    sleep 15
done
IdleCharging >/dev/null 2>&1
