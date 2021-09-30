# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Release name
PRODUCT_RELEASE_NAME := J706F

# Inherit from J706F device
$(call inherit-product, device/lenovo/J706F/device.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)
$(call inherit-product, vendor/omni/config/common.mk)
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