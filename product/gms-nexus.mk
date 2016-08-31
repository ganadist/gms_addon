PRODUCT_PACKAGES := \
	Chrome \
	GoogleCamera \
	Photos \
	CalculatorGoogle \
	CalendarGooglePrebuilt \
	PrebuiltDeskClockGoogle \
	PrebuiltGmail \
	PrebuiltExchange3Google \
	LatinImeGoogle \
	GoogleHome \
	Music2 \
	Hangouts \
	GoogleTTS \

PRODUCT_PACKAGES += \
	GoogleContacts \
	GoogleFeedback \
	GoogleDialer \
	TagGoogle \
	GCS \

#	AndroidForWork \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.error.receiver.system.apps=com.google.android.gms \

$(call inherit-product-if-exists, vendor/google/product/gms-jar.mk)
$(call inherit-product-if-exists, vendor/google/product/gms-lib.mk)
$(call inherit-product-if-exists, vendor/google/product/data.mk)

