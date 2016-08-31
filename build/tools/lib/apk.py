# vim: ts=4 sw=4 nocindent expandtab

import os
import subprocess

DPI = {'120': 'ldpi',
        '160': 'mdpi',
        '240': 'hdpi',
        '320': 'xhdpi',
        '480': 'xxhdpi',
#        '640': 'xxxhdpi',
#        '213': 'tvdpi',
}

ABI = {'armeabi' : 'arm',
        'armeabi-v7a' : 'arm',
        'arm64-v8a': 'arm64',
        'x86': 'x86',
        'x86_64': 'x86_64',
}

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
            elif line.startswith('compatible-screens:'):
                line = line.split(':', 1)[1]
                parse_dpi = lambda x: DPI.get(x[1:-1].split('/')[-1], '')
                dpis = set(map(parse_dpi, line.split(',')))
                if not dpis:
                    dpi = ''
                elif len(dpis) == 1:
                    dpi = tuple(dpis)[0]
                else:
                    # multi dpi
                    dpi = ''
                attrs['dpi'] = dpi

            elif line.startswith('native-code: '):
                line = line.split(None, 1)[1]
                attrs['abi'] = ABI[line[1:-1]]
            #elif line.startswith('alt-native-code: '):
            #    line = line.split(None, 1)[1]
            #    cpus.append(line[1:-1])
        else:
            attrs.setdefault('dpi', '')
            attrs.setdefault('abi', '')

    return attrs

class ApkName(object):
    def __init__(self, filename):
        self.filename = filename

    def __enter__(self):
        self.tempname = os.tempnam("apk")
        return self.tempname

    def __exit__(self, type, value, traceback):
        if os.path.exist(self.tempname):
            if type is None:
                import shutil
                shutil.move(self.tempname, self.filename)
            else:
                os.unlink(self.tempname)
        if type is not None:
            raise


if __name__ == '__main__':
    import sys
    for filename in sys.argv[1:]:
        print(get_apk_info(filename))
