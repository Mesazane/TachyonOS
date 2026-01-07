LOG_STEP_IN "- Removing UWB HAL from vendor"

BLOBS_LIST="
bin/hw/vendor.samsung.hardware.uwb@1.0-service
etc/uwb_key
etc/libuwb-nxp.conf
etc/libuwb-uci.conf
etc/permissions/samsung.hardware.uwb.xml
etc/permissions/android.hardware.uwb.xml
etc/init/init.vendor.uwb.rc
etc/init/nxp-uwb-service.rc
etc/vintf/manifest/uwb-service.xml
"
for blob in $BLOBS_LIST
do
    DELETE_FROM_WORK_DIR "vendor" "$blob"
done

sed -i -e "/sr100/d" -e "/UWB/d" "$WORK_DIR/vendor/etc/init/init.exynos990.rc"
LOG_STEP_OUT
