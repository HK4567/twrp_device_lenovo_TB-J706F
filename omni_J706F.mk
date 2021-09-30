#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := J706F

# Inherit from J706F device
$(call inherit-product, device/lenovo/J706F/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := J706F
PRODUCT_NAME := omni_J706F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J706F
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=J706F \
    BUILD_PRODUCT=J706F \
    TARGET_DEVICE=J706F
 
# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31