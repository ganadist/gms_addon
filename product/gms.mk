PRODUCT_PACKAGES := \
	Books \
	CloudPrint \
	DeviceAssist \
	Drive \
	EditorsDocs \
	EditorsSheets \
	EditorsSlides \
	Fit \
	GoogleEars \
	Keep \
	Messenger \
	Newsstand \
	NewsWeather \
	PlayGames \
	PlusOne \
	talkback \
	Translate \
	Videos \
	YouTube \

#PRODUCT_PACKAGES += \
	KoreanIME \
	GoogleEarth \
	HangOutDialer \
	PdfViewer \

$(call inherit-product-if-exists, vendor/google/product/gms-core.mk)


