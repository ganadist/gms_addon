
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

PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    VisualizationWallpapers \
    PhotoTable

PRODUCT_PROPERTY_OVERRIDES := \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.gms \
	ro.setupwizard.enterprize_mode=1 \
	ro.setupwizard.mode=REQUIRED \
	ro.opengles.version=131072 \

PRODUCT_PACKAGE_OVERLAYS := vendor/google/overlay

$(call inherit-product-if-exists, vendor/google/product/gms-lib.mk)
$(call inherit-product-if-exists, vendor/google/product/gms-jar.mk)
$(call inherit-product-if-exists, vendor/google/product/data.mk)

$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/noto-fonts/fonts.mk)
$(call inherit-product-if-exists, external/naver-fonts/fonts.mk)
$(call inherit-product-if-exists, external/sil-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)

$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)

# This add-on extends the default sdk product.
$(call inherit-product, $(SRC_TARGET_DIR)/product/sdk.mk)

# name of the add-on
PRODUCT_SDK_ADDON_NAME := nexus_emulator
#

# Copy the manifest and hardware files for the SDK add-on.
# The content of those files is manually created for now.
PRODUCT_SDK_ADDON_COPY_FILES := \
    vendor/google/product/sdk_addon/manifest.ini:manifest.ini \
    vendor/google/product/sdk_addon/hardware.ini:hardware.ini \

# Copy the jar files for the optional libraries that are exposed as APIs.
PRODUCT_SDK_ADDON_COPY_MODULES := \
	
# Rules for public APIs
PRODUCT_SDK_ADDON_STUB_DEFS :=

# Name of the doc to generate and put in the add-on. This must match the name defined
# in the optional library with the tag
#    LOCAL_MODULE:= platform_library
# in the documentation section.
PRODUCT_SDK_ADDON_DOC_MODULES :=


# Real name of the add-on. This is the name used to build the add-on.
# Use 'make PRODUCT-<PRODUCT_NAME>-sdk_addon' to build the add-on.
PRODUCT_NAME := gms
