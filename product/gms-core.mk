
PRODUCT_PACKAGES := \
	GoogleContactsSyncAdapter \
	WebViewGoogle \
	Maps \

PRODUCT_PACKAGES += \
	Phonesky \
	ConfigUpdater \
	Velvet \
	PrebuiltGmsCore \
	GoogleServicesFramework \
	GoogleLoginService \
	GoogleOneTimeInitializer \
	GooglePartnerSetup \
	SetupWizard \
	GooglePackageInstaller \

PRODUCT_PACKAGES += \
	GoogleBackupTransport \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.setupwizard.enterprise_mode=1 \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \

