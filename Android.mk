LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),d2q)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
