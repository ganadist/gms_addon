PRODUCT_PACKAGES := \
	Chrome \
	CalculatorGoogle \
	CalendarGoogle \
	DeskClockGoogle \
	Gmail2 \
	GoogleCamera \
	GoogleHome \
	GoogleTTS \
	GoogleVrCore \
	Hangouts \
	LatinImeGoogle \
	Music2 \
	NexusLauncher \
	Photos \

PRODUCT_PACKAGES += \
	GoogleContacts \
	GoogleFeedback \
	GoogleDialer \
	TagGoogle \
	GCS \

#	AndroidForWork \

PRODUCT_PROPERTY_OVERRIDES := \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
	ro.com.google.clientidbase=android-google \
	ro.carrier=unknown \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.gms \
	ro.setupwizard.enterprise_mode=1 \

$(call inherit-product-if-exists, vendor/google/product/gms-jar.mk)
$(call inherit-product-if-exists, vendor/google/product/gms-lib.mk)
$(call inherit-product-if-exists, vendor/google/product/data.mk)

