#!/sbin/sh

if grep -q "IM-A870S" /dev/block/mmcblk0p12 ; then
	mv /system/vendor/etc/firmware_ef52s/* /system/vendor/firmware/

elif grep -q "IM-A870K" /dev/block/mmcblk0p12 ; then
	mv /system/vendor/etc/firmware_ef52k/* /system/vendor/firmware/

elif grep -q "IM-A870L" /dev/block/mmcblk0p12 ; then
	mv /system/vendor/etc/firmware_ef52l/* /system/vendor/firmware/
fi

rm -rf /system/vendor/etc/firmware_ef52s
rm -rf /system/vendor/etc/firmware_ef52k
rm -rf /system/vendor/etc/firmware_ef52l
rm -rf /system/bin/device_check.sh

