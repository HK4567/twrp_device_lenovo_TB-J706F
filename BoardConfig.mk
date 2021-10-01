#
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
 
# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

LOCAL_PATH := device/lenovo/J706F

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Platform
TARGET_BOARD_PLATFORM := sm6150
TARGET_BOARD_PLATFORM_GPU := qcom-adreno618
QCOM_BOARD_PLATFORMS += sm6150

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sm6150
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

BUILD_BROKEN_DUP_RULES := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom \
                        androidboot.memcg=1 \
                        lpm_levels.sleep_disabled=1 \
                        video=vfb:640x400,bpp=32,memsize=3072000 \
                        msm_rtb.filter=0x237 \
                        service_locator.enable=1 \
                        swiotlb=1 \
                        androidboot.usbcontroller=a600000.dwc3 \
                        earlycon=msm_geni_serial,0x880000 \
                        loop.max_part=7 \
                        cgroup.memory=nokmem,nosocket \
                        androidboot.boot_devices=soc/1d84000.ufshc \
                        buildvariant=eng
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_DTB_OFFSET := 0x01f00000
TARGET_KERNEL_ARCH := arm64
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb.img
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo.img
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_KERNEL_HEADER_VERSION)

# Assert
TARGET_OTA_ASSERT_DEVICE := J706F

# Partitions
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
BOARD_USES_RECOVERY_AS_BOOT := false
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100663296

# File systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true 
 
# 16:10 Screen
TARGET_SCREEN_WIDTH := 2560
TARGET_SCREEN_HEIGHT := 1600

# Avb
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Dynamic partition size = (Super partition size / 2) - 4MB 
BOARD_SUPER_PARTITION_SIZE := 12884901888
BOARD_SUPER_PARTITION_GROUPS := somc_dynamic_partitions
BOARD_SOMC_DYNAMIC_PARTITIONS_SIZE := 6438256640
BOARD_SOMC_DYNAMIC_PARTITIONS_PARTITION_LIST := product system vendor

# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_WIPE := $(LOCAL_PATH)/recovery.wipe
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true

# TWRP Configuration
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 80
TW_THEME := portrait_hdpi
TW_Y_OFFSET := 89
TW_H_OFFSET := -89
TARGET_RECOVERY_DEVICE_MODULES += android.hardware.boot@1.0
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.0/lun.%d/file
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_NO_SCREEN_BLANK := true
TW_USE_TOOLBOX := true
AB_OTA_UPDATER := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true
    
# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 16.1.0