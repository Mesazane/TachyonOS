#!/usr/bin/env bash

# Remove the stock biometric face feature declaration.
if [ -e "$WORK_DIR/system/system/etc/permissions/android.hardware.biometrics.face.xml" ]; then
    DELETE_FROM_WORK_DIR "system" "system/etc/permissions/android.hardware.biometrics.face.xml"
fi
if [ -e "$WORK_DIR/system/system/etc/Permissions/android.hardware.biometrics.face.xml" ]; then
    DELETE_FROM_WORK_DIR "system" "system/etc/Permissions/android.hardware.biometrics.face.xml"
fi
if [ -e "$WORK_DIR/system/system/etc/permissions/android.hardware.biometric.face.xml" ]; then
    DELETE_FROM_WORK_DIR "system" "system/etc/permissions/android.hardware.biometric.face.xml"
fi
if [ -e "$WORK_DIR/system/system/etc/Permissions/android.hardware.biometric.face.xml" ]; then
    DELETE_FROM_WORK_DIR "system" "system/etc/Permissions/android.hardware.biometric.face.xml"
fi

# Ensure faced has the expected ownership, mode, and SELinux label.
SET_METADATA "system" "system/bin/faced" 0 2000 755 u:object_r:faced_exec:s0
