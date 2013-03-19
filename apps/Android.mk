LOCAL_PATH := $(call my-dir)

define add-gms-app
  $(eval $(include-gms-app))
endef

define include-gms-app
 include $$(CLEAR_VARS)
 LOCAL_SRC_FILES := $(call word-colon,1,$(1))
 LOCAL_MODULE := $$(basename $$(LOCAL_SRC_FILES))
 LOCAL_MODULE_SUFFIX := $$(suffix $$(LOCAL_SRC_FILES))
 LOCAL_OVERRIDES_PACKAGES := $(call word-colon,2,$(1))
 LOCAL_CERTIFICATE := PRESIGNED
 LOCAL_MODULE_CLASS := APPS
 LOCAL_MODULE_TAGS := optional
 include $$(BUILD_PREBUILT)
endef

GMS_APPS := \
	Books.apk \
	BrowserProviderProxy.apk \
	CalendarGoogle.apk:Calendar \
	Chrome.apk:Browser \
	ConfigUpdater.apk \
	Currents.apk \
	DeskClockGoogle.apk:DeskClock \
	EmailGoogle.apk:Email \
	Exchange2Google.apk:Exchange2 \
	GalleryGoogle.apk:Gallery \
	GenieWidget.apk:WidgetPreview \
	Gmail2.apk \
	GoogleContactsSyncAdapter.apk \
	GoogleEars.apk \
	GoogleEarth.apk \
	GoogleFeedback.apk \
	GoogleLoginService.apk \
	GooglePartnerSetup.apk \
	GooglePinyinIME.apk:PinyinIME \
	GoogleServicesFramework.apk \
	GoogleTTS.apk:PicoTts \
	KoreanIME.apk \
	LatinImeDictionaryPack.apk \
	LatinImeGoogle.apk:LatinIME \
	Magazines.apk \
	Maps.apk \
	MediaUploader.apk \
	Music2.apk:Music \
	NetworkLocation.apk \
	OccamQuickOffice.apk \
	OneTimeInitializer.apk \
	Phonesky.apk \
	PlusOne.apk \
	PrebuiltGmsCore.apk \
	SetupWizard.apk \
	Street.apk \
	TagGoogle.apk \
	Talk.apk \
	Velvet.apk:QuickSearchBox \
	VideoEditorGoogle.apk:VideoEditor \
	Videos.apk \
	VoiceSearchStub.apk \
	Wallet.apk \
	YouTube.apk \
	iWnnIME.apk:OpenWnn \
	iWnnIME_Kbd_White.apk \
	talkback.apk \

#GMS_APPS += \
	NfcNci.apk \

$(foreach f,$(GMS_APPS),$(call add-gms-app,$(f)))

	
include $(CLEAR_VARS)
LOCAL_MODULE := GoogleBackupTransport
LOCAL_SRC_FILES := GoogleBackupTransport.apk
LOCAL_MODULE_SUFFIX := .apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

#include $(CLEAR_VARS)
#LOCAL_MODULE := NetworkLocation
#LOCAL_SRC_FILES := NetworkLocation.apk
#LOCAL_MODULE_SUFFIX := .apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
#include $(BUILD_PREBUILT)

