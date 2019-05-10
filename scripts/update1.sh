#!/usr/bin/env bash

# if you wanna use it the same way as I do:
# 1. change the directory that pushd uses
# 2. change the username
# 3. add to PATH, or just do an alias to this script.
# 4. use git config --global credential.helper store (or you can use cache)

# NOTE:
# If you get an error saying "403 API rate limit exceeded for {YOUR_API}"-
# then as you can guess, it's related to your IP. One of the workarounds to this-
# is using GitHub tokens. Go to: https://github.com/settings/tokens, and make a token.
# then export it to GITHUB_TOKEN, and starred should automatically pick that token.
# example: export GITHUB_TOKEN=replace_with_your_token

pushd ~/Documents/awesome-stars/ &>/dev/null
echo Regenerating README.md...
python3 -m starred.starred --username dizaztor --sort > ./README.md
echo Updating the repo...
git add -A &>/dev/null
git commit -m "auto-update" &>/dev/null
git push origin master &>/dev/null
popd &>/dev/null
echo Done.

