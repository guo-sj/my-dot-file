#!/bin/bash

if ! command -v vimdiff &>/dev/null || [ -z "$MYVIMRC" ]
then
    echo vimdiff is not found, diff abort.
    exit
else
    vimdiff .vimrc $MYVIMRC
fi
