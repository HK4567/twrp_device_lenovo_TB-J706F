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
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)
# PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)