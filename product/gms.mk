PRODUCT_PACKAGES := \
	Books \
	BrowserProviderProxy \
	CalendarGoogle \
	Chrome \
	ConfigUpdater \
	Currents \
	DeskClockGoogle \
	EmailGoogle \
	Exchange2Google \
	GalleryGoogle \
	GenieWidget \
	Gmail2 \
	GoogleContactsSyncAdapter \
	GoogleEars \
	GoogleEarth \
	GoogleFeedback \
	GoogleLoginService \
	GooglePartnerSetup \
	GooglePinyinIME \
	GoogleServicesFramework \
	GoogleTTS \
	KoreanIME \
	LatinImeDictionaryPack \
	LatinImeGoogle \
	Magazines \
	Maps \
	MediaUploader \
	Music2 \
	OccamQuickOffice \
	OneTimeInitializer \
	PartnerBookmarksProvider \
	Phonesky \
	PlusOne \
	PrebuiltGmsCore \
	SetupWizard \
	Street \
	TagGoogle \
	Talk \
	Velvet \
	VideoEditorGoogle \
	Videos \
	VoiceSearchStub \
	Wallet \
	YouTube \
	iWnnIME \
	iWnnIME_Kbd_White \
	talkback \

PRODUCT_PACKAGES += \
	GoogleBackupTransport \
	NetworkLocation \

PRODUCT_PACKAGES += \
	MusicFX

PRODUCT_PACKAGES += \
	com.android.nfc_extras

$(call inherit-product-if-exists, vendor/google/product/gms-lib.mk)
$(call inherit-product-if-exists, vendor/google/product/gms-jar.mk)
$(call inherit-product-if-exists, vendor/google/product/data.mk)

PRODUCT_PROPERTY_OVERRIDES := \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.setupwizard.enterprize_mode=1 \
	ro.setupwizard.mode=REQUIRED \
	ro.opengles.version=131072 \

PRODUCT_PACKAGE_OVERLAYS := vendor/google/overlay
