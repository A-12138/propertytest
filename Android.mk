# Copyright Statement:
#
# Mobydata property test
#
#
LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := property.cpp

LOCAL_MODULE := propertytest

LOCAL_SHARED_LIBRARIES	+= $(HAL_SHARED_LIBRARIES)
LOCAL_CFLAGS += $(HAL_CFLAGS)

LOCAL_C_INCLUDES += \
    system/core/base/include

LOCAL_SHARED_LIBRARIES := \
    libcutils \
    libutils \
    liblog

include $(BUILD_EXECUTABLE)
