#!/Users/stephenfreed/Projects/Dot-Files/Dot-Files-Script-Py/bin/python3

import shutil
from git.repo import Repo
import time
from datetime import datetime

# copies files to dot-files git directory
shutil.copyfile('/Users/stephenfreed/.bash_profile', '/Users/stephenfreed/Projects/Dot-Files/.bash_profile')
shutil.copyfile('/Users/stephenfreed/.bashrc', '/Users/stephenfreed/Projects/Dot-Files/.bashrc')
shutil.copyfile('/Users/stephenfreed/.vimrc', '/Users/stephenfreed/Projects/Dot-Files/.vimrc')
shutil.copyfile('/Users/stephenfreed/.zshenv', '/Users/stephenfreed/Projects/Dot-Files/.zshenv')
shutil.copyfile('/Users/stephenfreed/.zshrc', '/Users/stephenfreed/Projects/Dot-Files/.zshrc')

# GitPython will add/commit/push if directory has changed
PATH_OF_GIT_REPO = r'/Users/stephenfreed/Projects/Dot-Files/.git'
dt = datetime.now().strftime('%d-%m-%y %H:%M:%S')
COMMIT_MESSAGE = 'script auto push '
repo = Repo(PATH_OF_GIT_REPO)
#3
def git_push():
    try:
        # repo.git.add(A=True)
        repo.index.add('--all')
        time.sleep(1)
        repo.index.commit(COMMIT_MESSAGE + dt)
        time.sleep(1)
        # origin = repo.remote(name='origin')
        #origin = repo.remotes.origin
        # origin.push()
        origin = repo.remote('/Users/stephenfreed/Projects/Dot-Files')
        # origin.push(refspec='{}:{}'.format('main', 'main'))
        origin.push()
    except:
        with open('/Users/stephenfreed/Projects/Dot-Files/script_log_file.txt', 'a') as my_file:
            my_file.write('ERROR While Pushing Code ' + dt + '\n')
if repo.is_dirty(untracked_files=True):
    git_push()

