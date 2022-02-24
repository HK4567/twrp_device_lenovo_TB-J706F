#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from J706F device
$(call inherit-product, device/lenovo/J706F/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Release name
PRODUCT_RELEASE_NAME := J706F

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := J706F
PRODUCT_NAME := twrp_J706F
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := lenovo TB-J706F
PRODUCT_MANUFACTURER := lenovo
