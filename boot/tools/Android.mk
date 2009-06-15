LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkheader.c
LOCAL_MODULE := mkheader
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_MODULE := appsboot.mbn
LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_REQUIRED_MODULES := usbloader
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(PRODUCT_OUT)/usbloader
	@mkdir -p $(dir $@)
	@cp -f $(PRODUCT_OUT)/usbloader $@

include $(CLEAR_VARS)
LOCAL_MODULE := appsboothd.mbn
LOCAL_MODULE_PATH := $(PRODUCT_OUT)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_REQUIRED_MODULES := mkheader usbloader
include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(HOST_OUT_EXECUTABLES)/mkheader \
                       $(PRODUCT_OUT)/usbloader
	@mkdir -p $(dir $@)
	@$(HOST_OUT_EXECUTABLES)/mkheader $(PRODUCT_OUT)/usbloader $@
