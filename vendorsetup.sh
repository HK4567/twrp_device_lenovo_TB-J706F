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
export TARGET_ARCH="arm64"

export FOX_VERSION="R11.0_1.2"
export OF_MAINTAINER=NightShadow

export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export LC_ALL="C"

export OF_USE_MAGISKBOOT=1
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"

export OF_AB_DEVICE="1"

export OF_STATUS_INDENT_LEFT="48"
export OF_STATUS_INDENT_RIGHT="48"
export OF_SCREEN_H=1600
export OF_SCREEN_W=2560
export OF_STATUS_H=94

export FOX_R11=1
# export FOX_ADVANCED_SECURITY=1

# export OF_USE_TWRP_SAR_DETECT=1
export OF_QUICK_BACKUP_LIST="/boot;/data;/system_image;/vendor_image;"

# export FOX_USE_ZIP_BINARY="1"
# export FOX_USE_TAR_BINARY="1"
# export FOX_ASH_IS_BASH="1"
# export FOX_REPLACE_BUSYBOX_PS="1"
# export FOX_USE_BASH_SHELL="1"
 
add_lunch_combo omni_J706F-eng
