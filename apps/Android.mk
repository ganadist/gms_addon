LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
# Chrome : 46.0.2490.76
LOCAL_MODULE := Chrome
LOCAL_SRC_FILES := com.android.chrome.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Browser
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# FackLock : 6.0-2256973
LOCAL_MODULE := FackLock
LOCAL_SRC_FILES := com.android.facelock.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleCamera : 2.7.008 (2130300-30)
LOCAL_MODULE := GoogleCamera
LOCAL_SRC_FILES := com.google.android.GoogleCamera.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Camera2
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Books : 3.6.9
LOCAL_MODULE := Books
LOCAL_SRC_FILES := com.google.android.apps.books.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# DeviceAssist : 106163821
LOCAL_MODULE := DeviceAssist
LOCAL_SRC_FILES := com.google.android.apps.cavalry.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# CloudPrint2 : 1.26b
LOCAL_MODULE := CloudPrint2
LOCAL_SRC_FILES := com.google.android.apps.cloudprint.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Drive : 2.3.357.23.34
LOCAL_MODULE := Drive
LOCAL_SRC_FILES := com.google.android.apps.docs.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# EditorsDocs : 1.4.432.06.34
LOCAL_MODULE := EditorsDocs
LOCAL_SRC_FILES := com.google.android.apps.docs.editors.docs.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# EditorsSheets : 1.4.432.06.34
LOCAL_MODULE := EditorsSheets
LOCAL_SRC_FILES := com.google.android.apps.docs.editors.sheets.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# EditorsSlides : 1.2.432.09.34
LOCAL_MODULE := EditorsSlides
LOCAL_SRC_FILES := com.google.android.apps.docs.editors.slides.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# FitnessPrebuilt : 1.54.08-008
LOCAL_MODULE := FitnessPrebuilt
LOCAL_SRC_FILES := com.google.android.apps.fitness.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltNewsWeather : 2.5.2 (105241914)
LOCAL_MODULE := PrebuiltNewsWeather
LOCAL_SRC_FILES := com.google.android.apps.genie.geniewidget.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Pay : 10.0-R227-v10
LOCAL_MODULE := Pay
LOCAL_SRC_FILES := com.google.android.apps.gmoney.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# HangOutDialer : 0.1.100944346
LOCAL_MODULE := HangOutDialer
LOCAL_SRC_FILES := com.google.android.apps.hangoutsdialer.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Newsstand : 3.4.4
LOCAL_MODULE := Newsstand
LOCAL_SRC_FILES := com.google.android.apps.magazines.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Maps : 9.16.2
LOCAL_MODULE := Maps
LOCAL_SRC_FILES := com.google.android.apps.maps.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltBugle : 1.5.037 (2294727-36)
LOCAL_MODULE := PrebuiltBugle
LOCAL_SRC_FILES := com.google.android.apps.messaging.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := messaging
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PdfViewer : 2.2.283.28.30
LOCAL_MODULE := PdfViewer
LOCAL_SRC_FILES := com.google.android.apps.pdfviewer.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Photos : 1.8.0.106438466
LOCAL_MODULE := Photos
LOCAL_SRC_FILES := com.google.android.apps.photos.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := VisualizationWallpapers Gallery2 PhotoTable LiveWallpapers Galaxy4 HoloSpiralWallpaper NoiseField PhaseBeam
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PlusOne : 6.6.0.105800701
LOCAL_MODULE := PlusOne
LOCAL_SRC_FILES := com.google.android.apps.plus.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Translate : 4.4.0.RC01.104701208
LOCAL_MODULE := Translate
LOCAL_SRC_FILES := com.google.android.apps.translate.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# CalculatorGoogle : 5.2 (2280749)
LOCAL_MODULE := CalculatorGoogle
LOCAL_SRC_FILES := com.google.android.calculator.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Calculator
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# CalendarGooglePrebuilt : 5.2.5-106395923-release
LOCAL_MODULE := CalendarGooglePrebuilt
LOCAL_SRC_FILES := com.google.android.calendar.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Calendar
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltDeskClockGoogle : 4.2 (2269723)
LOCAL_MODULE := PrebuiltDeskClockGoogle
LOCAL_SRC_FILES := com.google.android.deskclock.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := DeskClock
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleEars : 1.2.0
LOCAL_MODULE := GoogleEars
LOCAL_SRC_FILES := com.google.android.ears.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltGmail : 5.7.105901136.release
LOCAL_MODULE := PrebuiltGmail
LOCAL_SRC_FILES := com.google.android.gm.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Email
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltExchange3Google : 5.0.101238867
LOCAL_MODULE := PrebuiltExchange3Google
LOCAL_SRC_FILES := com.google.android.gm.exchange.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Exchange2
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# KoreanIME : 1.3.1.98367236-preload-armeabi-v7a
LOCAL_MODULE := KoreanIME
LOCAL_SRC_FILES := com.google.android.inputmethod.korean.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# LatinImeGoogle : 4.1.23043.2297020
LOCAL_MODULE := LatinImeGoogle
LOCAL_SRC_FILES := com.google.android.inputmethod.latin.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := LatinIME OpenWnn
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltKeep : 3.2.435.0
LOCAL_MODULE := PrebuiltKeep
LOCAL_SRC_FILES := com.google.android.keep.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleHome : 1.2.small
LOCAL_MODULE := GoogleHome
LOCAL_SRC_FILES := com.google.android.launcher.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Launcher2
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# talkback : 4.3.1
LOCAL_MODULE := talkback
LOCAL_SRC_FILES := com.google.android.marvin.talkback.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Music2 : 6.0.2005S.2314365
LOCAL_MODULE := Music2
LOCAL_SRC_FILES := com.google.android.music.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Music
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PlayGames : 3.3.58 (2285964-036)
LOCAL_MODULE := PlayGames
LOCAL_SRC_FILES := com.google.android.play.games.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleContactsSyncAdapter : 6.0-2280749
LOCAL_MODULE := GoogleContactsSyncAdapter
LOCAL_SRC_FILES := com.google.android.syncadapters.contacts.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Hangouts : 5.1.105976615
LOCAL_MODULE := Hangouts
LOCAL_SRC_FILES := com.google.android.talk.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleTTS : 3.7.12.2235583.arm.arm_neon
LOCAL_MODULE := GoogleTTS
LOCAL_SRC_FILES := com.google.android.tts.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := PicoTts
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Videos : 3.9.23
LOCAL_MODULE := Videos
LOCAL_SRC_FILES := com.google.android.videos.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Wallet : 1.0.103342659
LOCAL_MODULE := Wallet
LOCAL_SRC_FILES := com.google.android.apps.walletnfcrel.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# WebViewGoogle : 46.0.2490.76
LOCAL_MODULE := WebViewGoogle
LOCAL_SRC_FILES := com.google.android.webview.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := webview
LOCAL_REQUIRED_MODULES := libwebviewchromium_loader libwebviewchromium_plat_support
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# YouTube : 10.42.52
LOCAL_MODULE := YouTube
LOCAL_SRC_FILES := com.google.android.youtube.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleEarth : 8.0.2.2334
LOCAL_MODULE := GoogleEarth
LOCAL_SRC_FILES := com.google.earth.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# EditorsDocsStub : 0.1 (stub)
LOCAL_MODULE := EditorsDocsStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.docs.editors.docs.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := EditorsDocs
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# EditorsSheetsStub : 0.1 (stub)
LOCAL_MODULE := EditorsSheetsStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.docs.editors.sheets.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := EditorsSheets
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# EditorsSlidesStub : 0.1 (stub)
LOCAL_MODULE := EditorsSlidesStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.docs.editors.slides.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := EditorsSlides
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# NewsstandStub : 0.1
LOCAL_MODULE := NewsstandStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.magazines.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Newsstand
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltBugleStub : 0.1 (2161619)
LOCAL_MODULE := PrebuiltBugleStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.messaging.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := PrebuiltBugle
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltKeepStub : 0.1 (stub)
LOCAL_MODULE := PrebuiltKeepStub
LOCAL_SRC_FILES := stubs/com.google.android.keep.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := PrebuiltKeep
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# BooksStub : 0.1 (stub)
LOCAL_MODULE := BooksStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.books.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Books
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# CloudPrint2Stub : 0.1 (stub)
LOCAL_MODULE := CloudPrint2Stub
LOCAL_SRC_FILES := stubs/com.google.android.apps.cloudprint.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := CloudPrint2
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# DriveStub : 0.1 (stub)
LOCAL_MODULE := DriveStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.docs.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Drive
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# FitnessPrebuiltStub : 0.1 (stub)
LOCAL_MODULE := FitnessPrebuiltStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.fitness.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := FitnessPrebuilt
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# MapsStub : 0.1 (stub)
LOCAL_MODULE := MapsStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.maps.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Maps
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PlusOneStub : 0.1 (stub)
LOCAL_MODULE := PlusOneStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.plus.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := PlusOne
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# TranslateStub : 0.1 (stub)
LOCAL_MODULE := TranslateStub
LOCAL_SRC_FILES := stubs/com.google.android.apps.translate.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Translate
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# VideosStub : 0.1 (stub)
LOCAL_MODULE := VideosStub
LOCAL_SRC_FILES := stubs/com.google.android.videos.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Videos
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# YouTubeStub : 0.1 (stub)
LOCAL_MODULE := YouTubeStub
LOCAL_SRC_FILES := stubs/com.google.android.youtube.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := YouTube
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# HangoutsStub : 0.1 (stub)
LOCAL_MODULE := HangoutsStub
LOCAL_SRC_FILES := stubs/com.google.android.talk.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Hangouts
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Phonesky : 5.10.30
LOCAL_MODULE := Phonesky
LOCAL_SRC_FILES := com.android.vending.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# AndroidForWork : 6.0-2280749
LOCAL_MODULE := AndroidForWork
LOCAL_SRC_FILES := com.google.android.androidforwork.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GCS : C.1.6.4 (2107901)
LOCAL_MODULE := GCS
LOCAL_SRC_FILES := com.google.android.apps.gcs.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# ConfigUpdater : 6.0-2256973
LOCAL_MODULE := ConfigUpdater
LOCAL_SRC_FILES := com.google.android.configupdater.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleContacts : 1.2
LOCAL_MODULE := GoogleContacts
LOCAL_SRC_FILES := com.google.android.contacts.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Contacts
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleDialer : 2.2
LOCAL_MODULE := GoogleDialer
LOCAL_SRC_FILES := com.google.android.dialer.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Dialer
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleFeedback : 6.0-2256973
LOCAL_MODULE := GoogleFeedback
LOCAL_SRC_FILES := com.google.android.feedback.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# Velvet : 5.4.28.19.arm
LOCAL_MODULE := Velvet
LOCAL_SRC_FILES := com.google.android.googlequicksearchbox.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := QuickSearchBox
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# PrebuiltGmsCore : 8.3.00 (2353383-436)
LOCAL_MODULE := PrebuiltGmsCore
LOCAL_SRC_FILES := com.google.android.gms.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := WAPPushManager
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleServicesFramework : 6.0-2256973
LOCAL_MODULE := GoogleServicesFramework
LOCAL_SRC_FILES := com.google.android.gsf.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleLoginService : 6.0-2256973
LOCAL_MODULE := GoogleLoginService
LOCAL_SRC_FILES := com.google.android.gsf.login.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleOneTimeInitializer : 6.0-2256973
LOCAL_MODULE := GoogleOneTimeInitializer
LOCAL_SRC_FILES := com.google.android.onetimeinitializer.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := OneTimeInitializer
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GooglePackageInstaller : 6.0-2256973
LOCAL_MODULE := GooglePackageInstaller
LOCAL_SRC_FILES := com.google.android.packageinstaller.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := PackageInstaller
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GooglePartnerSetup : 6.0-2256973
LOCAL_MODULE := GooglePartnerSetup
LOCAL_SRC_FILES := com.google.android.partnersetup.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# SetupWizard : 2.0
LOCAL_MODULE := SetupWizard
LOCAL_SRC_FILES := com.google.android.setupwizard.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Provision
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# TagGoogle : 1.1
LOCAL_MODULE := TagGoogle
LOCAL_SRC_FILES := com.google.android.tag.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Tag
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
# GoogleBackupTransport : 6.0-2256973
LOCAL_MODULE := GoogleBackupTransport
LOCAL_SRC_FILES := com.google.android.backuptransport.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_OWNER := google
LOCAL_DEX_PREOPT := false
include $(BUILD_PREBUILT)

