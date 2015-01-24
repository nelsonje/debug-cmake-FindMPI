#!/bin/bash

NAME=try-`date +%s` 
( mkdir -p $NAME &&
    cd $NAME && 
    cmake .. --check-system-vars --debug-output --trace -DDEBUG_FINDMPI=true -Wdev $* 2>&1 | tee log &&
    cp log ../latest.log )