# Boot control HAL
PRODUCT_PACKAGES += \
    bootctrl.sm6150 \
    bootctrl.sm6150.recovery \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-impl-recovery \
    android.hardware.boot@1.0-impl-wrapper.recovery
    
PRODUCT_HOST_PACKAGES += \
    libandroidicu
    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)