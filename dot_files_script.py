#!/usr/bin/python

import shutil
from git.repo import Repo
import time

shutil.copyfile('/Users/stephenfreed/.bash_profile', '/Users/stephenfreed/Projects/Dot-Files/.bash_profile')
shutil.copyfile('/Users/stephenfreed/.bashrc', '/Users/stephenfreed/Projects/Dot-Files/.bashrc')
shutil.copyfile('/Users/stephenfreed/.vimrc', '/Users/stephenfreed/Projects/Dot-Files/.vimrc')
shutil.copyfile('/Users/stephenfreed/.zshenv', '/Users/stephenfreed/Projects/Dot-Files/.zshenv')
shutil.copyfile('/Users/stephenfreed/.zshrc', '/Users/stephenfreed/Projects/Dot-Files/.zshrc')

my_repo = Repo('/Users/stephenfreed/Projects/Dot-Files/.git')
my_repo.git.add('--all')
time.sleep(3)
my_repo.git.commit('-m', 'script auto push', author='Stephen Freed')
time.sleep(3)
origin = my_repo.remote(name='origin')
origin.push()
