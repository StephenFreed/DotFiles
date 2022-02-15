#!/Users/stephenfreed/Projects/Dot-Files/Dot-Files-Script-Py/bin/python3

import shutil
from git.repo import Repo  # type: ignore
import time
from datetime import datetime

# copies files to dot-files git directory
shutil.copyfile('/Users/stephenfreed/.bash_profile', '/Users/stephenfreed/Projects/Dot-Files/.bash_profile')
shutil.copyfile('/Users/stephenfreed/.bashrc', '/Users/stephenfreed/Projects/Dot-Files/.bashrc')
shutil.copyfile('/Users/stephenfreed/.ideavimrc', '/Users/stephenfreed/Projects/Dot-Files/.ideavimrc')
shutil.copyfile('/Users/stephenfreed/.vimrc', '/Users/stephenfreed/Projects/Dot-Files/.vimrc')
shutil.copyfile('/Users/stephenfreed/.zshenv', '/Users/stephenfreed/Projects/Dot-Files/.zshenv')
shutil.copyfile('/Users/stephenfreed/.zshrc', '/Users/stephenfreed/Projects/Dot-Files/.zshrc')
shutil.copyfile('/Users/stephenfreed/Projects/commands.txt', '/Users/stephenfreed/Projects/Dot-Files/commands.txt')

# GitPython will add/commit/push if directory has changed
PATH_OF_GIT_REPO = r'/Users/stephenfreed/Projects/Dot-Files/.git'
dt = datetime.now().strftime('%d-%m-%y %H:%M:%S')
COMMIT_MESSAGE = 'script auto push '
repo = Repo(PATH_OF_GIT_REPO)


def git_push():
    try:
        repo.git.add(A=True)
        time.sleep(1)
        repo.index.commit(COMMIT_MESSAGE + dt)
        time.sleep(1)
        origin = repo.remote(name='origin')
        origin.push(refspec='{}:{}'.format('main', 'main'))
    except: # noqa
        with open('/Users/stephenfreed/Projects/Dot-Files/script_log_file.txt', 'a') as my_file:
            my_file.write('ERROR While Pushing Code ' + dt + '\n')


if repo.is_dirty(untracked_files=True):
    git_push()
