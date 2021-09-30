#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := J706F
DEVICE_PATH := device/lenovo/J706F

# Inherit from J706F device
$(call inherit-product, $(DEVICE_PATH)/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := J706F
PRODUCT_NAME := omni_J706F
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-J706F
PRODUCT_MANUFACTURER := Lenovo