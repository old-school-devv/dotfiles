#!/bin/bash
# submodules los werden, auschecken und .git entfernen

REPOS=`ls`
for r in $REPOS ;
do
  echo "---$r"
  cd "$r"
  if [ -d ".git" ]; then
    git pull
    rm -rf .git
  fi
  cd ..
done
