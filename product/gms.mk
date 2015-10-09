PRODUCT_PACKAGES := \
	Chrome \
	PartnerBookmarksProvider \
	GoogleCamera \
	Books \
	CloudPrint2 \
	Drive \
	EditorsDocsStub \
	EditorsSheetsStub \
	EditorsSlidesStub \
	PrebuiltNewsWeather \
	HangOutDialer \
	NewsstandStub \
	PrebuiltBugleStub \
	Photos \
	PlusOne \
	CalculatorGoogle \
	CalendarGooglePrebuilt \
	PrebuiltDeskClockGoogle \
	GoogleEars \
	PrebuiltGmail \
	PrebuiltExchange3Google \
	KoreanIME \
	LatinImeGoogle \
	PrebuiltKeepStub \
	GoogleHome \
	talkback \
	Maps \
	Music2 \
	PlayGames \
	GoogleContactsSyncAdapter \
	GoogleCalendarSyncAdapter \
	HangOuts \
	GoogleTTS \
	Videos \
	WebViewGoogle \
	YouTube \

#	DeviceAssist \
#	FitnessPrebuilt \
#	Translate \
#	GoogleEarth \
#	PdfViewer \

PRODUCT_PACKAGES += \
	Phonesky \
	GoogleContacts \
	ConfigUpdater \
	GoogleFeedback \
	Velvet \
	PrebuiltGmsCore \
	GoogleServicesFramework \
	GoogleLoginService \
	GoogleOneTimeInitializer \
	GooglePartnerSetup \
	SetupWizard \
	CellBroadcastReceiver \
	GoogleDialer \
	GooglePackageInstaller \
	TagGoogle \

#	AndroidForWork \
#	GCS \

PRODUCT_PACKAGES += \
	GoogleBackupTransport \

PRODUCT_PROPERTY_OVERRIDES += \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.error.receiver.system.apps=com.google.android.feedback \
	ro.setupwizard.enterprize_mode=1 \
	ro.url.legal=http://www.google.com/intl/%%s/mobile/android/basic/phone-legal.html \
	ro.url.legal.android_privacy=http://www.google.com/intl/%%s/mobile/android/basic/privacy.html \

#$(call inherit-product-if-exists, vendor/google/product/gms-lib.mk)
$(call inherit-product-if-exists, vendor/google/product/gms-jar.mk)
$(call inherit-product-if-exists, vendor/google/product/data.mk)


