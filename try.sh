#!/bin/bash

NAME=try-`date +%s` 
( mkdir -p $NAME &&
    cd $NAME && 
    set | tee log &&
    cmake .. --check-system-vars --debug-output --trace -DDEBUG_FINDMPI=true -Wdev $* 2>&1 | tee -a log &&
    cp log ../latest.log )