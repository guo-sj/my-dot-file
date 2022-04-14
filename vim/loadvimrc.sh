#!/bin/bash

if [ -z "$MYVIMRC" ]; then
    echo "\$MYVIMRC is empty, load abort."
else
    cp -v .vimrc $MYVIMRC
    echo "Load complete."
fi
