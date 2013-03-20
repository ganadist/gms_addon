#!/usr/bin/env python
import os, sys
import errno
import glob
import re
import shutil
import struct
import subprocess
import zipfile

AAPT = 'aapt'
ZIPALIGN = 'zipalign'

APP_DIR = 'app'
LIB_DIR = 'lib'
FRAMEWORK_DIR = 'framework'
PERMISSION_DIR = os.path.join('etc', 'permissions')
MEDIA_DIR = 'media'

GMS_INCLUDE = (
    'com.android.chrome',
    'com.android.browser.provider', #BrowserProviderProxy.apk
    'com.qo.android.sp.oem', #OccamQuickOffice.apk
    'com.android.vending', #Phonesky.apk aka Play Store
    'jp.co.omronsoft.iwnnime.ml',
    'jp.co.omronsoft.iwnnime.ml.kbd.white',
)

#BADGING_PATTERN = re.compile(r"([^=\s,]+)='([^=\s,]+)'")
BADGING_PATTERN = re.compile(r"='([^=\s,]+)'")

def isGmsApp(filename):
    cmd = AAPT, 'd', 'badging', filename
    package = ''
    p = subprocess.Popen(cmd, stdout=subprocess.PIPE)

    # read first line only
    package = p.stdout.readline()
    if not package:
        return

    name = re.findall(BADGING_PATTERN, package)[0]
    if name.startswith('com.google.'):
        return True
    if name in GMS_INCLUDE:
        return True

OPT_MAGIC = 'dey\n'
OPT_VER   = '036\0'

optheader = '8s8i'
header_size = struct.calcsize(optheader)

def extractDex(odexfile):
    f = open(odexfile)
    header = struct.unpack(optheader, f.read(header_size))
    magic, offset, length, depsoffset, depslength, optoffset, optlength, flag, checksum = header
    f.seek(offset, os.SEEK_SET)
    return f.read(length)

def addJar(jarfile, dexbuf):
    out = zipfile.ZipFile(jarfile, 'a')
    out.writestr('classes.dex', dexbuf)

def undexopt(odexfile, infile, outfile):
    tmpfile = outfile + '.tmp'
    dex = extractDex(odexfile)
    shutil.copy(infile, tmpfile)
    addJar(tmpfile, dex)
    os.system('%s -f 4 "%s" "%s"'%(ZIPALIGN, tmpfile, outfile))
    os.unlink(tmpfile)

def checkPrerequires():
    tools = AAPT, ZIPALIGN
    for tool in tools:
        if os.system('which %s'%tool):
            print 'please install %s in your PATH'%tool
            sys.exit(1)
    return True

def checkFactoryImageDir(path):
    return os.access(os.path.join(path, 'build.prop'), os.R_OK)

def prepareDirectories():
    VENDOR_DIR = os.path.join(os.path.dirname(__file__), '..', '..')
    def makedirs(path):
        if os.path.isdir(path):
            return
        os.makedirs(path)

    for dirname in (FRAMEWORK_DIR, LIB_DIR, os.path.join('data', MEDIA_DIR)):
        makedirs(os.path.join(VENDOR_DIR, dirname))
    return VENDOR_DIR

class BaseData(object):
    def __init__(self, src, dst, filter = None):
        object.__init__(self)
        self.src = src
        self.dst = dst
        if filter:
            self.filter = filter
        else:
            def filter(src):
                return glob.glob(os.path.join(src, "*"))
            self.filter = filter

    def collect(self):
        self.files = self.filter(self.src)

    def copy(self):
        raise NotImplementedError

class CopyData(BaseData):
    def copy(self):
        for filename in self.files:
            outfile = os.path.join(self.dst, os.path.basename(filename))
            shutil.copy(filename, outfile)

class DexData(BaseData):
    def copy(self):
        for filename in self.files:
            outfile = os.path.join(self.dst, os.path.basename(filename))
            odexfile = os.path.splitext(filename)[0] + '.odex'
            if not os.access(odexfile, os.R_OK):
                shutil.copy(filename, outfile)
            else:
                undexopt(odexfile, filename, outfile)

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print 'Usage: %s factory_image_mounted_path'%sys.argv[0]
        sys.exit(1)
    path = sys.argv[1]
    checkPrerequires()
    if not checkFactoryImageDir(path):
        print 'please mount nexus factory image on %s'%path
        sys.exit(1)

    dst = prepareDirectories()

    def filter_apk(src):
        apkfiles = glob.glob(os.path.join(src, "*.apk"))
        return filter(isGmsApp, apkfiles)

    def filter_jar(src):
        jarfiles = glob.glob(os.path.join(src, "*.jar"))
        return filter(lambda x: 'com.google.' in x, jarfiles)

    def filter_bootamin(src):
        filename = os.path.join(src, 'bootanimation.zip')
        return [filename]

    def filter_permission(src):
        files = glob.glob(os.path.join(src, "com.google.*.xml"))
        feature = os.path.join(src, 'features.xml')
        if os.access(feature, os.R_OK):
            files.append(feature)
        return files

    def filter_lib(src):
        # XXX
        files = (
            'libchromeview.so',
            'libearthmobile.so',
            'libfrsdk.so', # facial recognization sdk
            'libgoggles_clientvision.so',
            'libgoogle_recognizer_jni.so',
            'libgtalk_jni.so',
            'libgtalk_stabilize.so',
            'libiwnn.so',
            'libjni_googlepinyinime_5.so',
            'libjni_googlepinyinime_latinime_5.so',
            'libjni_koreanime.so',
            'libjni_latinimegoogle.so',
            'libkaomoji_kihon.so',
            'libkaomoji_tyukyu.so',
            'libpatts_engine_jni_api.so',
            'libspeexwrapper.so',
        )
        return map(lambda x: os.path.join(src, x), files)

 
    d = (
        (DexData, APP_DIR, 'apps', filter_apk),
        (DexData, FRAMEWORK_DIR, FRAMEWORK_DIR, filter_jar),
        (CopyData, MEDIA_DIR, os.path.join('data', MEDIA_DIR), filter_bootamin),
        (CopyData, PERMISSION_DIR, os.path.join('data', 'permissions'), filter_permission),
        (CopyData, LIB_DIR, LIB_DIR, filter_lib),
    )
    for installer, s, d, f in d:
        srcpath = os.path.join(path, s)
        dstpath = os.path.join(dst, d)
        i = installer(srcpath, dstpath, f)
        i.collect()
        i.copy()
