#!/bin/bash

find . -name .DS_Store -print0 | xargs -0 git rm -f --ignore-unmatch

rm -rf .git
git init
git config user.name Derek-J
git config user.email lutics@users.noreply.github.com
git add .
git commit -m "Initial Commit"
git branch -M main
git remote add origin https://github.com/codeoven/Sydelight.git
git push -f origin main
