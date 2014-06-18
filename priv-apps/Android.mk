LOCAL_PATH := $(call my-dir)

define add-gms-app
  $(eval $(include-gms-app))
endef

define include-gms-app
 include $$(CLEAR_VARS)
 LOCAL_SRC_FILES := $(call word-colon,1,$(1))
 LOCAL_MODULE := $$(basename $$(LOCAL_SRC_FILES))
 LOCAL_MODULE_SUFFIX := $$(suffix $$(LOCAL_SRC_FILES))
 LOCAL_MODULE_OWNER := google
 LOCAL_OVERRIDES_PACKAGES := $(call word-colon,2,$(1))
 LOCAL_CERTIFICATE := PRESIGNED
 LOCAL_PRIVILEGED_MODULE := true
 LOCAL_MODULE_CLASS := APPS
 LOCAL_MODULE_TAGS := optional
 include $$(BUILD_PREBUILT)
endef

GMS_APPS := \
	ConfigUpdater.apk \
	GoogleBackupTransport.apk \
	GoogleFeedback.apk \
	GoogleLoginService.apk \
	GoogleOneTimeInitializer.apk \
	GooglePartnerSetup.apk \
	GoogleServicesFramework.apk \
	Phonesky.apk \
	PrebuiltGmsCore.apk \
	SetupWizard.apk:Provision \
	TagGoogle.apk \
	Velvet.apk:QuickSearchBox \
	Wallet.apk \
	talkback.apk \


$(foreach f,$(GMS_APPS),$(call add-gms-app,$(f)))

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleDialer
LOCAL_SRC_FILES := GoogleDialer.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_OWNER := google
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OVERRIDES_PACKAGES := Dialer VoiceDialer
LOCAL_PRIVILEGED_MODULE := true
include $(BUILD_PREBUILT)

