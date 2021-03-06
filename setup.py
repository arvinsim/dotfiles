import platform
import os
from os.path import expanduser
home = expanduser("~")

# This script only supports Linux and OSX
if platform.system() != 'Darwin' and platform.system() != 'Linux':
    exit()

print('Setup start...')

# Create Symlinks for the rc files
rc_files = ['.eslintrc', '.gvimrc', '.vimrc', '.zlogin', '.zlogout',
            '.zpreztorc', '.zprofile', '.zshenv', '.zshrc', '.ideavimrc']

for rc_file in rc_files:
    source = os.path.join(os.getcwd(), rc_file)
    destination = os.path.join(home, rc_file)
    if os.path.isfile(source) and not os.path.isfile(destination):
        os.symlink(source, destination)
        print(source + ' is created.')

print('Setup done!')
