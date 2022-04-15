#!/bin/bash

if ! command -v vimdiff &>/dev/null 
then
    echo vimdiff is not found, diff abort.
    exit
elif [ -z "$MYVIMRC" ]
then
    echo \$MYVIMRC is not found, diff abort.
    exit
else
    vimdiff .vimrc $MYVIMRC
fi
