#!/usr/bin/env bash
python3 -m starred.starred --username dizaztor --sort > README.md
git add -A
git commit -m "update list"
git push origin master
