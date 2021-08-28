LOCAL_PATH := device/Lenovo/J706F

# define hardware platform
PRODUCT_PLATFORM := sm6150

AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \

PRODUCT_PACKAGES += \
    bootctrl.sm6150
    
PRODUCT_STATIC_BOOT_CONTROL_HAL := \
    bootctrl.sm6150 \
    libgptutils.Lenovo_J706F \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# Recovery - Modules
PRODUCT_HOST_PACKAGES += \
    libandroidicu
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
