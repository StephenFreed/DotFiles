
import os
import shutil
from git.repo import Repo
import time

shutil.copyfile('/Users/stephenfreed/.bash_profile', '/Users/stephenfreed/Projects/Dot-Files/.bash_profile')
shutil.copyfile('/Users/stephenfreed/.bashrc', '/Users/stephenfreed/Projects/Dot-Files/.bashrc')
shutil.copyfile('/Users/stephenfreed/.vimrc', '/Users/stephenfreed/Projects/Dot-Files/.vimrc')
shutil.copyfile('/Users/stephenfreed/.zshenv', '/Users/stephenfreed/Projects/Dot-Files/.zshenv')
shutil.copyfile('/Users/stephenfreed/.zshrc', '/Users/stephenfreed/Projects/Dot-Files/.zshrc')

my_repo = Repo('/users/stephenfreed/projects/dot-files/.git')
# # if my_repo.is_dirty(untracked_files=True):
# my_repo.git.add('--all')
# time.sleep(3)
# my_repo.git.commit('-m', 'script auto push', author='Stephen Freed')
# time.sleep(3)
# origin = my_repo.remote(name='https://github.com/StephenFreed/Dot-Files.git')
# origin.push()




PATH_OF_GIT_REPO = r'/Users/stephenfreed/Projects/Dot-Files/.git'  # make sure .git folder is properly configured
COMMIT_MESSAGE = 'script auto push'

def git_push():
    try:
        repo = Repo(PATH_OF_GIT_REPO)
        repo.git.add(update=True)
        repo.index.commit('script auto push')
        origin = repo.remote(name='origin')
        repo.git.push("origin", "HEAD:refs/for/main")
        # origin.push()
    except:
        print('Some error occured while pushing the code')   

git_push()
