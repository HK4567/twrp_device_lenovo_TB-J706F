LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), J706F)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif