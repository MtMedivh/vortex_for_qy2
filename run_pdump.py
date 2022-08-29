import os,shutil
import sys, getopt, json
import re
import subprocess as sp

pyversion = sys.version_info.major

class Shell:
    def __init__(self, cmd):
        self.handle = sp.Popen(cmd, stdin=sp.PIPE, shell=True)

    def send(self, what):
        for c in what:
            if pyversion == 3:
                self.handle.stdin.write(bytes(c, 'UTF-8'))
            else:
                self.handle.stdin.write(c)
            self.handle.stdin.flush()

    def poll(self):
        return self.handle.poll()

    def done(self):
        if self.poll() is None:
            return False
        return True

    def close(self):
        self.handle.stdin.close()


def dump(cmd):
    print('execute:pdump\n')
    hwperf_shell = Shell('pdump -c0 ')
    print('execute:\n' + cmd)
    os.system(cmd)
    print('input x')
    hwperf_shell.send('x')

    while hwperf_shell.done() is False:
        pass
    print('success')

def mv_out2_dir(cmd):
    display_params = os.getenv('PVR_DISPLAY_PARAMS')
    print(display_params)
    w,h = str(display_params).split(' ')
    w_value = w.split('=')[1].strip()
    h_value = h.split('=')[1].strip()
    _dir =  'pdump/' + cmd.split('-e')[1].strip()+'_'+w_value+'x'+h_value
    if os.path.exists(_dir) is False:
        os.mkdir(_dir)
        shutil.move('out2.txt', _dir)
        shutil.move('out2.prm', _dir)

def set_screen_size(width,height):
    assert 0<width<=16384 and 0 < height <= 16384,"error width and height:"+str(width)+'x'+str(height) 
    os.system('/etc/init.d/rc.musa stop')
    os.environ['PVR_DISPLAY_PARAMS']=f"width={width} height={height}"
    os.system('/etc/init.d/rc.musa start')


def generate_cmd(case_name):
    cmd = os.path.dirname(os.path.abspath(__file__)) + r'/vortex-x86_64-gles3-nullws -n 1 -N 1 -r onscreen -e ' + case_name  
    print(cmd)
    return cmd


def run_case(case_name,width,height): 
    set_screen_size(width,height)
    cmd = generate_cmd(case_name)
    dump(cmd)
    mv_out2_dir(cmd)
    

def run(cmd_path):
    pattern = '\s*(\w+)\s+(\w+)\s+(\w+)\s*'
    for case in open(cmd_path):
        case = case.strip()
        if case != '' and case.startswith('#') is False and case.startswith('//') is False:
            match = re.match(pattern,case)
            if match is not None:
                run_case(match.group(1),int(match.group(2)),int(match.group(3)))

def command_process(argv):
    if os.path.exists('pdump') is False:
        os.mkdir('pdump')
    if len(argv) == 4:
        run_case(int(argv[1]),int(argv[2]),argv[3])
    else:
        run(argv[1])
if __name__ == '__main__':
    command_process(sys.argv)
