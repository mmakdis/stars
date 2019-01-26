#!/usr/bin/env bash

# if you wanna use it the same way as I do:
# 1. change the directory that pushd uses
# 2. change the username
# 3. add to PATH, or just do an alias to this script.
# 4. use git config --global credential.helper cache

pushd /mnt/d/Documents/Projects/awesome-stars/
echo Regenerating README.md...
python3 -m starred.starred --username dizaztor --sort > ./README.md
echo Updating the repo...
git add -A
git commit -m "update list"
git push origin master
echo Done.
popd

