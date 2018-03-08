LOCAL_PATH := $(call my-dir)
VNDK_SP_LIBRARIES := \
    libRS_internal\
    libRSDriver\
    libRSCpuRef\
    libbcinfo\
    libblas\
    libft2\
    libpng\
    libcompiler_rt\
ifndef BOARD_VNDK_VERSION
VNDK_SP_LIBRARIES += \
    android.hardware.renderscript@1.0\
    android.hardware.graphics.allocator@2.0\
    android.hardware.graphics.mapper@2.0\
    android.hardware.graphics.common@1.0\
    libhwbinder\
    libbase\
    libcutils\
    libhardware\
    libui\
    libutils\
    libc++\
    libbacktrace\
    libunwind\
    liblzma\
    libhidlbase\
    libhidltransport\
endif
define add-vndk-sp-lib
include $$(CLEAR_VARS)
LOCAL_MODULE := $1.vndk-sp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PREBUILT_MODULE_FILE := $$(TARGET_OUT)/lib/$1.so
LOCAL_MULTILIB := 32
LOCAL_MODULE_TAGS := optional
LOCAL_INSTALLED_MODULE_STEM := $1.so
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_RELATIVE_PATH := vndk-sp
include $$(BUILD_PREBUILT)
endef
$(foreach lib,$(VNDK_SP_LIBRARIES),\
    $(eval $(call add-vndk-sp-lib,$(lib))))
