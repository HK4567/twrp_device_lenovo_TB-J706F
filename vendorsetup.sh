#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2018-2021 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#
FDEVICE="J706F"
# set -o xtrace
echo $FOX_BUILD_DEVICE

fox_get_target_device() {
local F="$BASH_ARGV"
   [ -z "$F" ] && F="$BASH_SOURCE"
   if [ -n "$F" ]; then
      local D1=$(dirname "$F")
      local D2=$(basename "$D1")
      [ -n "$D2" ] && echo "$D2"
   fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
   FOX_BUILD_DEVICE=$(fox_get_target_device)
fi

# OrangeFox
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then

	export PLATFORM_VERSION="16.1.0"
	export PLATFORM_SECURITY_PATCH="2099-12-31"
	export TW_DEFAULT_LANGUAGE="en"
	export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1

	
	# Partitions
	export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
	export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
	export OF_QUICK_BACKUP_LIST="/super:/boot:/dtbo:/data"
	export OF_AB_DEVICE=1

	# Boot
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1


	export FOX_REPLACE_BUSYBOX_PS=1
	export FOX_REPLACE_TOOLBOX_GETPROP=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_SED_BINARY=1
	export FOX_USE_BASH_SHELL=1
	export FOX_ASH_IS_BASH=1
	export FOX_ENABLE_APP_MANAGER=1
	export FOX_USE_NANO_EDITOR=1
	

	export OF_SUPPORT_PER_FLASH_SCRIPT=1
	export OF_CHECK_OVERWRITE_ATTEMPTS=1
	export OF_ALLOW_DISABLE_NAVBAR=0
	export OF_SPLASH_MAX_SIZE=104
	export OF_CLASSIC_LEDS_FUNCTION=1
	export OF_PATCH_AVB20=1
	export OF_SKIP_MULTIUSER_FOLDERS_BACKUP=1

	# R11
	export FOX_R11=1
	export FOX_ADVANCED_SECURITY=1
	export OF_USE_TWRP_SAR_DETECT=1

	# Use system (ROM) fingerprint where available
	export OF_USE_SYSTEM_FINGERPRINT=1

	
	# OTA for custom ROMs
    	export OF_SUPPORT_ALL_BLOCK_OTA_UPDATES=1
    	export OF_FIX_OTA_UPDATE_MANUAL_FLASH_ERROR=1
	
	# Rounded Corners
	export OF_STATUS_INDENT_LEFT="48"
	export OF_STATUS_INDENT_RIGHT="48"
	export OF_SCREEN_H=1600
	export OF_SCREEN_W=2560
	# Notch 
	export OF_CLOCK_POS=1 # Only left and right
	export OF_STATUS_H=68 # Notch height
	
	# let's log what are the build VARs that we used
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "PLATFORM_" >> $FOX_BUILD_LOG_FILE
  	fi

fi
#
