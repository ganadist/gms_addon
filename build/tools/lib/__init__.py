import os
import shutil
import tempfile

class WorkDir:
    def __init__(self):
        pass

    def __enter__(self):
        self.old_workdir = os.getcwd()
        self.tempdir = tempfile.mkdtemp()
        os.chdir(self.tempdir)
        return self.tempdir

    def __exit__(self, type, value, traceback):
        os.chdir(self.old_workdir)
        shutil.rmtree(self.tempdir)
        return value

def replace_entries(src, dst, entries):
    if isinstance(entries, str):
        entries = (entries, )
    entries = ' '.join(entries)
    cmd = ('zip -d "%s" %s &&'%(dst, entries),
        'unzip "%s" %s ;'%(src, entries),
        'zip -D -X "%s" %s'%(dst, entries))
    cmd = ''.join(cmd)
    print(cmd)
    assert os.system(cmd) == 0, 'error while running : ' + cmd

def zipalign(filename):
    cmd = ('zipalign -f -p 4 "%(dstfile)s" "%(dstfile)s.aligned"',
            'mv -f "%(dstfile)s.aligned" "%(dstfile)s"')
    cmd = '&&'.join(cmd)
    cmd = cmd%{'dstfile': filename}
    assert os.system(cmd) == 0, 'error while running : ' + cmd

