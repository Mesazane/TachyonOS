if [[ "$TARGET_CODENAME" != "beyond0lte" && "$TARGET_CODENAME" != "beyond1lte" && "$TARGET_CODENAME" != "beyond2lte" && "$TARGET_CODENAME" != "beyondx" ]]; then
    LOG "- Skipping HDR10 camera-feature patch for $TARGET_CODENAME"
    return 0
fi

LOG_STEP_IN "- Enabling HDR10 in camera-feature.xml"
CAMERA_FEATURE="$WORK_DIR/system/system/cameradata/camera-feature.xml"
if [ -f "$CAMERA_FEATURE" ]; then
    sed -i 's/hdr10="false"/hdr10="true"/g' "$CAMERA_FEATURE"
else
    LOGW "File not found: ${CAMERA_FEATURE//$WORK_DIR\//}"
fi
LOG_STEP_OUT
