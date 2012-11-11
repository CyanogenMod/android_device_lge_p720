#!/sbin/sh

sleep 5

## Clear "boot-recovery...enable-wipe" flag
echo "518 1 1" > /sys/kernel/kobject_lge_nvdata/dynamic_nvdata_raw_write

## Restart adbd, just in case
killall -9 adbd
