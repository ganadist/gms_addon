PRODUCT_PACKAGES := \
	Books \
	BrowserProviderProxy \
	CalendarGoogle \
	Chrome \
	CloudPrint2 \
	DeskClockGoogle \
	Drive \
	EmailGoogle \
	Exchange2Google \
	GalleryGoogle \
	GenieWidget \
	Gmail2 \
	GoogleCamera \
	GoogleContactsSyncAdapter \
	GoogleEars \
	GoogleEarth \
	GoogleHindiIME \
	GoogleHome \
	GooglePinyinIME \
	GoogleTTS \
	HPPrintPlugin \
	Hangouts \
	Keep \
	KoreanIME \
	LatinImeGoogle \
	Magazines \
	Maps \
	MediaUploader \
	Music2 \
	PlayGames \
	PlusOne \
	QuickOffice \
	Street \
	SunBeam \
	Videos \
	YouTube \
	iWnnIME \
	iWnnIME_Kbd_White \
	talkback \

PRODUCT_PACKAGES += \
	ConfigUpdater \
	GoogleBackupTransport \
	GoogleDialer \
	GoogleFeedback \
	GoogleLoginService \
	GoogleOneTimeInitializer \
	GooglePartnerSetup \
	GoogleServicesFramework \
	Phonesky \
	PrebuiltGmsCore \
	SetupWizard \
	TagGoogle \
	Velvet \
	Wallet \
	talkback \

PRODUCT_PACKAGES += \
	libvideoeditor_jni \
	libvideoeditor_core \
	libvideoeditor_osal \
	libvideoeditor_videofilters \
	libvideoeditorplayer \
	libjni_eglfence \
	libjni_filtershow_filters \
	libjni_mosaic \
	MusicFX

PRODUCT_PACKAGES += \
	libsrec_jni \
	com.android.nfc_extras

$(call inherit-product-if-exists, vendor/google/product/gms-lib.mk)
$(call inherit-product-if-exists, vendor/google/product/gms-jar.mk)
$(call inherit-product-if-exists, vendor/google/product/data.mk)

PRODUCT_PROPERTY_OVERRIDES := \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.gms \
	ro.setupwizard.enterprize_mode=1 \
	ro.opengles.version=131072 \

PRODUCT_PACKAGE_OVERLAYS := vendor/google/overlay
