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
	BrowserProviderProxy.apk:Browser \
	CalendarGoogle.apk:Calendar \
	Chrome.apk \
	CloudPrint2.apk \
	DeskClockGoogle.apk:DeskClock \
	Drive.apk \
	EmailGoogle.apk:Email \
	Exchange2Google.apk:Exchange2 \
	GalleryGoogle.apk:Gallery2 \
	GenieWidget.apk:WidgetPreview \
	Gmail2.apk \
	GoogleCamera.apk:Camera2 \
	GoogleContactsSyncAdapter.apk \
	GoogleEars.apk \
	GoogleEarth.apk \
	GoogleHindiIME.apk \
	GoogleHome.apk:Launcher2 \
	GooglePinyinIME.apk:PinyinIME \
	GoogleTTS.apk:PicoTts \
	HPPrintPlugin.apk \
	Hangouts.apk:Mms \
	Keep.apk \
	KoreanIME.apk \
	LatinImeGoogle.apk:LatinIME \
	Magazines.apk \
	Maps.apk \
	MediaUploader.apk \
	Music2.apk:Music \
	PlayGames.apk \
	PlusOne.apk \
	QuickOffice.apk \
	Street.apk \
	SunBeam.apk \
	Videos.apk \
	YouTube.apk \
	iWnnIME.apk:OpenWnn \
	iWnnIME_Kbd_White.apk \

#GMS_APPS += \
	NfcNci.apk \

$(foreach f,$(GMS_APPS),$(call add-gms-app,$(f)))

#include $(CLEAR_VARS)
#LOCAL_MODULE := NetworkLocation
#LOCAL_SRC_FILES := NetworkLocation.apk
#LOCAL_MODULE_SUFFIX := .apk
#LOCAL_MODULE_CLASS := APPS
#LOCAL_MODULE_TAGS := optional
#LOCAL_CERTIFICATE := platform
#include $(BUILD_PREBUILT)

