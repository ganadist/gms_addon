#!/usr/bin/env python3
import os, glob
import subprocess
import shutil
import zipfile

for E in ('TOP', 'ANDROID_BUILD_TOP'):
    top = os.getenv(E)
    if top:
        break
else:
    assert False
STUBS_PREFIX = 'stubs'
dst = os.path.join(top, 'vendor/google/apps')
STUBS = os.path.join(dst, STUBS_PREFIX)

def stub(fn):
    return os.path.join(STUBS_PREFIX, fn)

install_to_data = (
    'GoogleEarth',
    'HangOutDialer',
    'FitnessPrebuilt',
    'PrebuiltNewsWeather',
    'PlusOne',
    'PdfViewer',
    'Translate',
    'Videos',
)

need_to_odex = (
    'GoogleCalendarSyncAdapter',
    'GoogleContactsSyncAdapter',
    'LatinImeGoogle',
    'GoogleTTS',
    'CalculatorGoogle',
    'GoogleEars',
    'GoogleContacts',
    'GooglePackageInstaller',
    'SetupWizard',
    'GoogleOneTimeInitializer',
    'GooglePartnerSetup',
    'TagGoogle',
    'GoogleLoginService',
    'GoogleBackupTransport',
    'GoogleDialer',
    'AndroidForWork',
    'ConfigUpdater',
    'GoogleFeedback',
)

packages = (
    ('com.android.chrome.apk', 'Chrome', 'Browser'),
    ('com.android.facelock.apk', 'FackLock', ),
	('com.google.android.GoogleCamera.apk', 'GoogleCamera', 'Camera2'),
	('com.google.android.apps.books.apk', 'Books'),
	('com.google.android.apps.cavalry.apk', 'DeviceAssist'),
	('com.google.android.apps.cloudprint.apk', 'CloudPrint2'),
	('com.google.android.apps.docs.apk', 'Drive'),
	('com.google.android.apps.docs.editors.docs.apk', 'EditorsDocs'),
	('com.google.android.apps.docs.editors.sheets.apk', 'EditorsSheets'),
	('com.google.android.apps.docs.editors.slides.apk', 'EditorsSlides'),
	('com.google.android.apps.fitness.apk', 'FitnessPrebuilt'),
	('com.google.android.apps.genie.geniewidget.apk', 'PrebuiltNewsWeather',),
    ('com.google.android.apps.gmoney.apk', 'Pay',),
	('com.google.android.apps.hangoutsdialer.apk', 'HangOutDialer'),
	('com.google.android.apps.magazines.apk', 'Newsstand'),
	('com.google.android.apps.maps.apk', 'Maps'),
	('com.google.android.apps.messaging.apk', 'PrebuiltBugle', 'messaging'),
	('com.google.android.apps.pdfviewer.apk', 'PdfViewer'),
	('com.google.android.apps.photos.apk', 'Photos',
        ('VisualizationWallpapers', 'Gallery2', 'PhotoTable', 'LiveWallpapers',
            'Galaxy4', 'HoloSpiralWallpaper', 'NoiseField', 'PhaseBeam')),
	('com.google.android.apps.plus.apk', 'PlusOne'),
    ('com.google.android.apps.translate.apk', 'Translate'),
    ('com.google.android.calculator.apk', 'CalculatorGoogle', 'Calculator'),
	('com.google.android.calendar.apk', 'CalendarGooglePrebuilt', 'Calendar'),
	('com.google.android.deskclock.apk', 'PrebuiltDeskClockGoogle',
        'DeskClock'),
	('com.google.android.ears.apk', 'GoogleEars'),
	('com.google.android.gm.apk', 'PrebuiltGmail', 'Email'),
	('com.google.android.gm.exchange.apk', 'PrebuiltExchange3Google',
    'Exchange2'),
	('com.google.android.inputmethod.korean.apk', 'KoreanIME',),
	('com.google.android.inputmethod.latin.apk', 'LatinImeGoogle',
        ('LatinIME', 'OpenWnn',) ),
	('com.google.android.keep.apk', 'PrebuiltKeep',),
	('com.google.android.launcher.apk', 'GoogleHome', 'Launcher2'),
	('com.google.android.marvin.talkback.apk', 'talkback'),
	('com.google.android.music.apk', 'Music2', 'Music',),
	('com.google.android.play.games.apk', 'PlayGames',),
	('com.google.android.syncadapters.contacts.apk',
    'GoogleContactsSyncAdapter',),
    ('com.google.android.syncadapters.calendar.apk',
    'GoogleCalendarSyncAdapter',  ),
	('com.google.android.talk.apk', 'Hangouts',),
	('com.google.android.tts.apk', 'GoogleTTS', 'PicoTts'),
	('com.google.android.videos.apk', 'Videos',),
    ('com.google.android.apps.walletnfcrel.apk', 'Wallet',),
	('com.google.android.webview.apk', 'WebViewGoogle', 'webview',
        ('libwebviewchromium_loader', 'libwebviewchromium_plat_support'),),
	('com.google.android.youtube.apk', 'YouTube'),
    ('com.google.earth.apk', 'GoogleEarth'),

	(stub('com.google.android.apps.docs.editors.docs.apk'), 'EditorsDocsStub',
            'EditorsDocs'),
	(stub('com.google.android.apps.docs.editors.sheets.apk'),
            'EditorsSheetsStub', 'EditorsSheets'),
	(stub('com.google.android.apps.docs.editors.slides.apk'),
            'EditorsSlidesStub', 'EditorsSlides'),
	(stub('com.google.android.apps.magazines.apk'), 'NewsstandStub',
            'Newsstand'),
	(stub('com.google.android.apps.messaging.apk'), 'PrebuiltBugleStub',
            'PrebuiltBugle'),
	(stub('com.google.android.keep.apk'), 'PrebuiltKeepStub', 'PrebuiltKeep'),

)

privileged_packages = (
	('com.android.vending.apk', 'Phonesky', ),
	('com.google.android.androidforwork.apk', 'AndroidForWork', ),
	('com.google.android.apps.gcs.apk', 'GCS', ),
	('com.google.android.configupdater.apk', 'ConfigUpdater', ),
	('com.google.android.contacts.apk', 'GoogleContacts', 'Contacts', ),
	('com.google.android.dialer.apk', 'GoogleDialer', 'Dialer', ),
	('com.google.android.feedback.apk', 'GoogleFeedback', ),
	('com.google.android.googlequicksearchbox.apk', 'Velvet', 'QuickSearchBox',
        ),
    ('com.google.android.gms.apk', 'PrebuiltGmsCore', 'WAPPushManager'),
	('com.google.android.gsf.apk', 'GoogleServicesFramework', ),
	('com.google.android.gsf.login.apk', 'GoogleLoginService', ),
	('com.google.android.onetimeinitializer.apk', 'GoogleOneTimeInitializer',
        'OneTimeInitializer', ),
	('com.google.android.packageinstaller.apk', 'GooglePackageInstaller',
        'PackageInstaller', ),
	('com.google.android.partnersetup.apk', 'GooglePartnerSetup', ),
	('com.google.android.setupwizard.apk', 'SetupWizard', 'Provision', ),
	('com.google.android.tag.apk', 'TagGoogle', 'Tag', ),
	('com.google.android.backuptransport.apk', 'GoogleBackupTransport',),
)

def system(cmd):
    return os.system("bash -c '%s' > /dev/null"%cmd)

def get_apk_info(filename):
    cmd = 'aapt', 'd', 'badging', filename
    attrs = {}
    with subprocess.Popen(cmd, stdout=subprocess.PIPE) as proc:
        for line in proc.stdout:
            line = line[:-1]
            line = line.decode('utf-8')
            if line.startswith('package: '):
                line = line.split(None, 1)[1]
                line = line.strip()
                while line:
                    k, line = line.split('=', 1)
                    _, line = line.split("'", 1)
                    v, line = line.split("'", 1)
                    attrs[k] = v
                    line = line.strip()
                break
    return attrs

def generate_package(info, privileged):
    if len(info) == 2:
        filename, package = info
        override = None
        deps = None
    elif len(info) == 3:
        filename, package, override = info
        deps = None
    elif len(info) == 4:
        filename, package, override, deps = info
    else:
        assert False
    if override:
        if isinstance(override, str):
            override = (override, )
        elif isinstance(override, tuple):
            pass
        else:
            assert False

    if deps:
        if isinstance(deps, str):
            deps = (deps, )
        elif isinstance(deps, tuple):
            pass
        else:
            assert False

    yield 'include $(CLEAR_VARS)'

    dstfile = os.path.join(dst, filename)

    # for stub packages
    if filename.startswith(STUBS_PREFIX) and not os.path.exists(STUBS):
        os.makedirs(STUBS)

    for dpi in ('320', 'nodpi'):
        f = os.path.join(dpi, filename)
        if os.path.isfile(f):
            srcfile = f
            break
    else:
        srcfile = filename

    attrs = get_apk_info(srcfile)
    yield '# %s : %s'%(package, attrs['versionName'])

    yield 'LOCAL_MODULE := %s'%package
    yield 'LOCAL_SRC_FILES := %s'%filename
    yield 'LOCAL_MODULE_CLASS := APPS'
    yield 'LOCAL_MODULE_TAGS := optional'

    jnis = []
    shutil.copyfile(srcfile, dstfile)

    if 0 and system('unzip -t %s "lib/*.so"'%(dstfile)) == 0:
        jni_path = os.path.join(dst, package)
        system('rm -rf %s'%jni_path)
        system('unzip -x %s "lib/*.so" -d %s'%(srcfile, jni_path))
        target_abi = os.path.join(jni_path, 'lib', 'arm')
        for abi in ('armeabi-v7a', 'armeabi'):
            abidir = os.path.join(jni_path, 'lib', abi)
            if os.path.isdir(abidir):
                os.rename(abidir, target_abi)

        with zipfile.ZipFile(srcfile) as zin:
            with zipfile.ZipFile(dstfile, 'w') as zout:
                for f in zin.infolist():
                    if not f.filename.startswith('lib/'):
                        buffer = zin.read(f.filename)
                        zout.writestr(f, buffer)
        jnis = map(lambda x: x[len(dst) + 1:], glob.glob(target_abi + '/*'))

    if jnis:
        yield 'LOCAL_PREBUILT_JNI_LIBS := %s'%(' '.join(jnis))

    if override:
        yield 'LOCAL_OVERRIDES_PACKAGES := %s'%(' '.join(override))
    if deps:
        yield 'LOCAL_REQUIRED_MODULES := %s'%(' '.join(deps))

    yield 'LOCAL_CERTIFICATE := PRESIGNED'
    if privileged:
        yield 'LOCAL_PRIVILEGED_MODULE := true'
    yield 'LOCAL_MODULE_OWNER := google'

    if package in install_to_data:
        yield 'LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_APPS)'

    #if package in need_to_odex: # and not package in install_to_data:
    #    yield 'LOCAL_DEX_PREOPT := true'
    #else:
    #    yield 'LOCAL_DEX_PREOPT := false'

    yield 'include $(BUILD_PREBUILT)'
    yield ''


print('LOCAL_PATH := $(call my-dir)\n')
for p in packages:
    print('\n'.join(generate_package(p, False)))
for p in privileged_packages:
    print('\n'.join(generate_package(p, True)))
