#/bin/bash

# simple todo list app

if [ $# -eq 0 ]; then
    FILE=`date +'%m-%d-%Y'`
elif [ "$1" = "-2" ]; then
    FILE=`date -v-2d +'%m-%d-%Y'`
elif [ "$1" = "-1" ]; then
    FILE=`date -v-1d +'%m-%d-%Y'`
elif [ "$1" = "+1" ]; then
    FILE=`date -v+1d +'%m-%d-%Y'`
elif [ "$1" = "week" ]; then
    FILE=`date +'week-%V-%Y'`
elif [ "$1" = "month" ]; then
    FILE=`date +'month-%m-%Y'`
else 
    echo "Err: unknown input"
    exit 1
fi

$EDITOR ~/Documents/todo/$FILE.md
