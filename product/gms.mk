PRODUCT_PACKAGES := \
	Books \
	GoogleEars \
	YouTube \
	PlayGames \
	Newsstand \
	PrebuiltKeep \
	KoreanIME \
	PrebuiltBugle \
	CloudPrint2 \
	DeviceAssist \
	Drive \
	EditorsDocs \
	EditorsSheets \
	EditorsSlides \
	talkback \

PRODUCT_PACKAGES += \
	GoogleEarth \
	HangOutDialer \
	FitnessPrebuilt \
	PrebuiltNewsWeather \
	PlusOne \
	PdfViewer \
	Translate \
	Videos \

$(call inherit-product-if-exists, vendor/google/product/gms-core.mk)


