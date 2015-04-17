LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_LDLIBS := -L$(LOCAL_PATH) -llog -lminecraftpe
LOCAL_MODULE    := atomiclauncher
LOCAL_SRC_FILES_RAW := $(shell find $(LOCAL_PATH) -name '*.cpp')
LOCAL_SRC_FILES := $(LOCAL_SRC_FILES_RAW:$(LOCAL_PATH)/%=%)

LOCAL_SHARED_LIBRARIES := tinysubstrate-bin

TARGET_NO_UNDEFINED_LDFLAGS :=

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, prebuilts)

$(call import-module, tinysubstrate-bin)
