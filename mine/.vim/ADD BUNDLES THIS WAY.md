

git submodule add http://github...thingy.vim bundle/thingy.vim
git submodule update --init --recursive


REMOVE:

Stage the .gitmodules changes via command line using: git add .gitmodules.
Run git rm --cached path/to/submodule . Don't include a trailing slash -- that will lead to an error.
Run rm -rf .git/modules/submodule_name.
Commit the change:
Delete the now untracked submodule files rm -rf path/to/submodule.

