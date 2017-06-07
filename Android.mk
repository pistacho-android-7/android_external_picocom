LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	picocom.c \
	term.c

LOCAL_SHARED_LIBRARIES := \
    libc libcutils libutils

LOCAL_MODULE_TAGS := optional

# Build shared library
LOCAL_SHARED_LIBRARIES += \
    libcutils libutils
LOCAL_CFLAGS += -DRIL_SHLIB
LOCAL_CFLAGS += -DVERSION_STR="\"1.7.1\""
# Enabling baudrate more then 115200kpbs
LOCAL_CFLAGS += -DHIGH_BAUD
LOCAL_CFLAGS += -Wall

LOCAL_MODULE:= picocom
LOCAL_MODULE_TAGS := debug
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
include $(BUILD_EXECUTABLE)
