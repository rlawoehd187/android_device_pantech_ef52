#!/sbin/sh

if grep -q "IM-A870S" /dev/block/mmcblk0p12 ; then
	mv /system/etc/firmware_ef52s/* /system/etc/firmware/

elif grep -q "IM-A870K" /dev/block/mmcblk0p12 ; then
	mv /system/etc/firmware_ef52k/* /system/etc/firmware/

elif grep -q "IM-A870L" /dev/block/mmcblk0p12 ; then
	mv /system/etc/firmware_ef52l/* /system/etc/firmware/
fi

rm -rf /system/etc/firmware_ef52s
rm -rf /system/etc/firmware_ef52k
rm -rf /system/etc/firmware_ef52l
rm -rf /system/bin/device_check.sh

