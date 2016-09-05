LOCAL_PATH := $(call my-dir)

my_archs := arm
my_src_arch := $(call get-prebuilt-src-arch, $(my_archs))

include $(CLEAR_VARS)
# FaceLock : 7.0-3037786
LOCAL_MODULE := FaceLock
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_BUILT_MODULE_STEM := package.apk
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
LOCAL_SRC_FILES := $(LOCAL_MODULE).apk

LOCAL_REQUIRED_MODULES := libprotobuf-cpp-full
LOCAL_PREBUILT_JNI_LIBS := \
    lib/$(my_src_arch)/libfacenet.so \
    lib/$(my_src_arch)/libfrsdk.so
LOCAL_MODULE_TARGET_ARCH := $(my_src_arch)

include $(BUILD_PREBUILT)


