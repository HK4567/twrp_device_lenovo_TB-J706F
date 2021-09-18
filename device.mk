# define hardware platform
PRODUCT_PLATFORM := sm6150

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    boot \
    recovery \
    system \
    vendor \
    vbmeta \
    product \
    dtbo 

TARGET_ENFORCE_AB_OTA_PARTITION_LIST := true
   
# A/B support
PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
    
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true
    
# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.1-impl-wrapper.recovery \
    android.hardware.boot@1.1-impl-wrapper \
    android.hardware.boot@1.1-impl-recovery \
    bootctrl.sm6150 \
    bootctrl.sm6150.recovery
    
PRODUCT_HOST_PACKAGES += \
    libandroidicu

PRODUCT_USE_DYNAMIC_PARTITIONS := true
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)