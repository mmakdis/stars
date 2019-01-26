#!/usr/bin/env bash
pushd /mnt/d/Documents/Projects/awesome-stars/
echo Regenerating README.md...
python3 -m starred.starred --username dizaztor --sort > ./README.md
echo Updating the repo...
git add -A
git commit -m "update list"
git push origin master
echo Done.
popd
