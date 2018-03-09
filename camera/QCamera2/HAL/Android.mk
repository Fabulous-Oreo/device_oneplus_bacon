LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
        QCamera2Factory.cpp \
        QCamera2Hal.cpp \
        QCamera2HWI.cpp \
        QCameraMem.cpp \
        ../util/QCameraQueue.cpp \
        ../util/QCameraCmdThread.cpp \
        QCameraStateMachine.cpp \
        QCameraChannel.cpp \
        QCameraStream.cpp \
	QCameraPostProc.cpp \
        QCamera2HWICallbacks.cpp \
        QCameraParameters.cpp \
        QCameraThermalAdapter.cpp \
        wrapper/QualcommCamera.cpp

LOCAL_CFLAGS = -Wall -Werror
LOCAL_CLANG_CFLAGS += \
    -Wno-error=unused-variable \
    -Wno-error=sign-compare \
    -Wno-error=unused-parameter \
    -Wno-error=unused-private-field 
    
# Debug logs are disabled
LOCAL_CFLAGS += -DDISABLE_DEBUG_LOG

TARGET_USE_VENDOR_CAMERA_EXT := true
LOCAL_CFLAGS += -DDEFAULT_ZSL_MODE_ON
LOCAL_CFLAGS += -DDEFAULT_DENOISE_MODE_ON

ifeq ($(TARGET_USES_MEDIA_EXTENSIONS), true)
LOCAL_CFLAGS += -DUSE_MEDIA_EXTENSIONS
endif

ifeq ($(TARGET_USE_VENDOR_CAMERA_EXT),true)
LOCAL_CFLAGS += -DUSE_VENDOR_CAMERA_EXT
endif
ifneq ($(call is-platform-sdk-version-at-least,18),true)
LOCAL_CFLAGS += -DUSE_JB_MR1
endif

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/../stack/common \
        framework/native/include \
        frameworks/native/include/media/openmax \
        hardware/qcom/display/msm8994/libgralloc \
        hardware/qcom/media/msm8974/libstagefrighthw \
        $(LOCAL_PATH)/../../mm-image-codec/qexif \
        $(LOCAL_PATH)/../../mm-image-codec/qomx_core \
        $(LOCAL_PATH)/../util \
        $(LOCAL_PATH)/wrapper

ifeq ($(call is-platform-sdk-version-at-least,20),true)
LOCAL_C_INCLUDES += system/media/camera/include
else
LOCAL_CFLAGS += -DUSE_KK_CODE
endif

LOCAL_C_INCLUDES += hardware/qcom/display/msm8994/libgralloc
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include/media
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SHARED_LIBRARIES := libcamera_client liblog libhardware libutils libcutils libdl libgui
LOCAL_SHARED_LIBRARIES += libmmcamera_interface libmmjpeg_interface libhidltransport libsensor android.hidl.token@1.0-utils
LOCAL_STATIC_LIBRARIES := libarect

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := camera.$(TARGET_BOARD_PLATFORM)
LOCAL_CLANG := false
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

include $(LOCAL_PATH)/test/Android.mk
