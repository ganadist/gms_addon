#!/usr/bin/env python3
# vim: ts=4 sw=4 nocindent expandtab

import sys, os, glob
import shutil
import collections
import zipfile
from lib.apk import get_apk_info

for E in ('TOP', 'ANDROID_BUILD_TOP'):
    top = os.getenv(E)
    if top:
        break
else:
    assert False

STUBS_PREFIX = 'stubs'

PACKAGES = (
    ('com.android.chrome', 'Chrome', ('Browser', 'Browser2'),),
    ('com.google.android.GoogleCamera', 'GoogleCamera', 'Camera2'),
    ('com.google.android.apps.books', 'Books'),
    ('com.google.android.apps.cloudprint', 'CloudPrint'),
    ('com.google.android.apps.docs', 'Drive'),
    ('com.google.android.apps.docs.editors.docs', 'EditorsDocs'),
    ('com.google.android.apps.docs.editors.sheets', 'EditorsSheets'),
    ('com.google.android.apps.docs.editors.slides', 'EditorsSlides'),
    ('com.google.android.apps.fitness', 'Fit'),
    ('com.google.android.apps.genie.geniewidget', 'NewsWeather',),
    ('com.google.android.apps.gmoney', 'AndroidPay',),
    ('com.google.android.apps.hangoutsdialer', 'HangOutDialer'),
    ('com.google.android.apps.magazines', 'Newsstand'),
    ('com.google.android.apps.maps', 'Maps'),
    ('com.google.android.apps.messaging', 'Messenger', 'messaging'),
    ('com.google.android.apps.pdfviewer', 'PdfViewer'),
    ('com.google.android.apps.photos', 'Photos',
        ('Gallery2', 'PhotoTable',)),
    ('com.google.android.apps.plus', 'PlusOne'),
    ('com.google.android.apps.translate', 'Translate'),
    ('com.google.android.apps.walletnfcrel', 'Wallet',),
    ('com.google.android.apps.wallpaper', 'WallpaperPickerGoogle'),
    ('com.google.android.apps.wallpaper.nexus', 'NexusWallpapers'),
    ('com.google.android.calculator', 'CalculatorGoogle',
        ('Calculator', 'ExactCalculator')),
    ('com.google.android.calendar', 'CalendarGoogle', 'Calendar'),
    ('com.google.android.deskclock', 'DeskClockGoogle',
        'DeskClock'),
    ('com.google.android.ears', 'GoogleEars'),
    ('com.google.android.ext.shared', 'GoogleExtShared', 'ExtShared'),
    ('com.google.android.gm', 'Gmail2', ('Email', 'Exchange2')),
    ('com.google.android.inputmethod.korean', 'KoreanIME',),
    ('com.google.android.inputmethod.latin', 'LatinImeGoogle',
        ('LatinIME', 'OpenWnn',) ),
    ('com.google.android.keep', 'Keep',),
    ('com.google.android.launcher', 'GoogleHome',
        ('Home', 'Launcher2', 'Launcher3')),
    ('com.google.android.marvin.talkback', 'talkback'),
    ('com.google.android.music', 'Music2', 'Music',),
    ('com.google.android.nexusicons', 'NexusLauncherIcons'),
    ('com.google.android.play.games', 'PlayGames',),
    ('com.google.android.printservice.recommendation',
                'GooglePrintRecommendationService',
                'PrintRecommendationService'),
    ('com.google.android.syncadapters.contacts', 'GoogleContactsSyncAdapter',),
    ('com.google.android.talk', 'Hangouts',),
    ('com.google.android.tts', 'GoogleTTS', 'PicoTts'),
    ('com.google.android.videos', 'Videos',),
    ('com.google.android.webview', 'WebViewGoogle', 'webview',
        ('libwebviewchromium_loader', 'libwebviewchromium_plat_support'),),
    ('com.google.android.youtube', 'YouTube'),
    ('com.google.earth', 'GoogleEarth'),
    ('com.breel.geswallpapers', 'WallpapersBReel'),
    ('com.ustwo.lwp', 'WallpapersUsTwo'),
)

PRIVILEGED_PACKAGES = (
    ('com.android.hotwordenrollment', 'HotwordEnrollment', ),
    ('com.android.vending', 'Phonesky', ),
    ('com.google.android.androidforwork', 'AndroidForWork', ),
    ('com.google.android.apps.gcs', 'GCS', ),
    ('com.google.android.apps.nexuslauncher', 'NexusLauncher',
        ('Home', 'Launcher2', 'Launcher3', 'GoogleHome'),
        ('WallpaperPickerGoogle', )),
    ('com.google.android.backuptransport', 'GoogleBackupTransport',),
    ('com.google.android.configupdater', 'ConfigUpdater', ),
    ('com.google.android.contacts', 'GoogleContacts', 'Contacts', ),
    ('com.google.android.dialer', 'GoogleDialer', 'Dialer', ),
    ('com.google.android.ext.services', 'GoogleExtServices', 'ExtServices', ),
    ('com.google.android.feedback', 'GoogleFeedback', ),
    ('com.google.android.gms', 'GmsCore', 'WAPPushManager'),
    ('com.google.android.googlequicksearchbox', 'Velvet',
        ('QuickSearchBox',),
        ('HotwordEnrollment', )),
    ('com.google.android.gsf', 'GoogleServicesFramework', ),
    ('com.google.android.gsf.login', 'GoogleLoginService', ),
    ('com.google.android.nfcprovision', 'NfcProvision', ),
    ('com.google.android.onetimeinitializer', 'GoogleOneTimeInitializer',
        'OneTimeInitializer', ),
    ('com.google.android.packageinstaller', 'GooglePackageInstaller',
        'PackageInstaller', ),
    ('com.google.android.partnersetup', 'GooglePartnerSetup', ),
    ('com.google.android.setupwizard', 'SetupWizard', 'Provision', ),
    ('com.google.android.tag', 'TagGoogle', 'Tag', ),
)

STUBS = (
    'Books',
    'CalendarGoogle',
    'CloudPrint',
    'DeskClockGoogle',
    'Drive',
    'EditorsDocs',
    'EditorsSheets',
    'EditorsSlides',
    'Fit',
    'GoogleCamera',
    'Hangouts',
    'Keep',
    'Maps',
    'Messenger',
    'Music2',
    'Newsstand',
    'NewsWeather',
    'Photos',
    'PlayGames',
    'PlusOne',
    'Translate',
    'Videos',
    'WebViewGoogle',
    'YouTube',
)

def parse_info(info):
    if len(info) == 2:
        pkg, name, = info
        override = ()
        deps = ()
    elif len(info) == 3:
        pkg, name, override = info
        deps = ()
    elif len(info) == 4:
        pkg, name, override, deps = info
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
    return name, (pkg, override, deps)

class Module(object):
    def __init__(self, name, *args):
        self.parse(name, *args)

    def parse(self, name, *args):
        self.name = name
        self.pkg, self.override, self.deps = args

    def collect_files(self):
        self.files = glob.glob(self.pkg + ".apk")
        self.files += glob.glob(self.pkg + "_*")

    def get_abis(self):
        abis = map(lambda x: x['abi'], self.attrs.values())
        return set(filter(lambda x: x != '', abis))

    def get_dpis(self):
        dpis = map(lambda x: x['dpi'], self.attrs.values())
        return set(filter(lambda x: x != '', dpis))

    def print_android_mk_body(self):
        self.attrs = collections.OrderedDict(map(lambda x: (x, get_apk_info(x)), self.files))
        if self.name == 'GoogleCamera':
            for filename, attrs in self.attrs.items():
                if attrs['versionCode'] == '32045130':
                    self.attrs = { filename: attrs }
                    break

        yield '# %s : %s'%(self.name, list(self.attrs.values())[0]['versionName'])


        yield "LOCAL_MODULE := " + self.name
        yield "LOCAL_MODULE_CLASS := APPS"
        yield "LOCAL_MODULE_TAGS := optional"
        yield "LOCAL_BUILT_MODULE_STEM := package.apk"
        yield "LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)"

        if self.override:
            yield 'LOCAL_OVERRIDES_PACKAGES := ' + ' '.join(self.override)

        if self.deps:
            yield 'LOCAL_REQUIRED_MODULES := ' + ' '.join(self.deps)

        yield "LOCAL_CERTIFICATE := PRESIGNED"
        yield 'LOCAL_MODULE_OWNER := google'
        yield 'LOCAL_DEX_PREOPT := false'

        abis = self.get_abis()
        dpis = self.get_dpis()

        if dpis:
            yield 'LOCAL_DPI_VARIANTS := ' + ' '.join(dpis)

        if abis:
            yield 'my_archs := ' + ' '.join(abis)
            yield 'my_src_arch := $(call get-prebuilt-src-arch, $(my_archs))'
            yield 'ifeq ($(my_src_arch),arm64)'
            yield 'LOCAL_MULTILIB := both'
            yield 'else ifeq ($(my_src_arch),x86_64)'
            yield 'LOCAL_MULTILIB := both'
            yield 'endif'
            if dpis:
                yield "LOCAL_DPI_FILE_STEM := $(LOCAL_MODULE)_$(my_src_arch)_%.apk"
            yield "LOCAL_SRC_FILES := $(LOCAL_MODULE)_$(my_src_arch).apk"
            yield "LOCAL_MODULE_TARGET_ARCH := $(my_src_arch)"
        elif dpis:
            yield "LOCAL_DPI_FILE_STEM := $(LOCAL_MODULE)_%.apk"
            yield "LOCAL_SRC_FILES := $(LOCAL_MODULE).apk"
        else:
            yield "LOCAL_SRC_FILES := $(LOCAL_MODULE).apk"

    def print_android_mk(self):
        self.collect_files()
        if not self.files:
            print('WARN: no files for {}'.format(self.name), file = sys.stderr)
            return

        yield 'include $(CLEAR_VARS)'
        for line in self.print_android_mk_body():
            yield line
        yield 'include $(BUILD_PREBUILT)'
        yield ''

    def copy(self, destdir):
        if not self.files:
            print('WARN: no files for {}'.format(self.name), file = sys.stderr)
            return

        for filename, attrs in self.attrs.items():
            src = filename
            dest = self.name
            for k in ('abi', 'dpi'):
                if attrs[k]:
                    dest += '_' + attrs[k]
            dest += '.apk'
            shutil.copy(filename, os.path.join(destdir, dest))

class PrivilegedModule(Module):
    def print_android_mk_body(self):
        for line in super().print_android_mk_body():
            yield line
        yield 'LOCAL_PRIVILEGED_MODULE := true'

class StubModule(Module):
    def parse(self, name, parent):
        self.name = name + 'Stub'
        self.pkg = parent.pkg
        self.override = parent.override + (name, )
        self.deps = parent.deps

    def collect_files(self):
        self.files = []
        filename = os.path.join(STUBS_PREFIX, self.pkg + '.apk')
        if os.path.exists(filename):
            self.files.append(filename)

    def get_abis(self):
        pass

    def get_dpis(self):
        pass

if __name__ == '__main__':

    if len(sys.argv) == 1:
        outfile = os.readlink('/proc/self/fd/1')
        if outfile.startswith('/dev/pts'):
            dst = os.path.join(top, 'vendor/google/apps')
            out = open(os.path.join(dst, 'Android.mk'), 'w')
        else:
            out = sys.stdout
            dst = os.path.dirname(outfile)
    elif len(sys.argv) == 2:
        outfile = sys.argv[1]
        out = open(outfile, 'w')
        dst = os.path.dirname(outfile)
    else:
        assert False

    packages = collections.OrderedDict()
    for info in PACKAGES:
        p, args = parse_info(info)
        packages[p] = Module(p, *args)

    for p in STUBS:
        s = StubModule(p, packages[p])
        packages[s.name] = s

    for info  in PRIVILEGED_PACKAGES:
        p, args = parse_info(info)
        packages[p] = PrivilegedModule(p, *args)

    print('LOCAL_PATH := $(call my-dir)\n', file = out)
    for p in packages.values():
        print('\n'.join(p.print_android_mk()), file = out)
        p.copy(dst)

