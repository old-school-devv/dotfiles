#!/bin/bash
SUBS=`git submodule|awk '{print $2}'`

for s in $SUBS ;
do
        echo "Updating $s"
        cd $s
        git fetch origin --tags
        git checkout master
        git pull
        git log -n 1 --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'
        git submodule update --init --recursive
        cd -
        git add $s
done
