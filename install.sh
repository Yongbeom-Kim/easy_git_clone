#!/bin/bash

BASE_DIR=$(realpath ~/Dev)
BIN_DIR=$BASE_DIR/bin

mkdir -p $BIN_DIR

# Scripts dir
SCRIPTS_DIR=$BASE_DIR/scripts
ln -s $SCRIPTS_DIR/* $BIN_DIR

# Add BIN_DIR to PATH
if [ -f ~/.profile ]; then 
    echo "export PATH=$BIN_DIR:\$PATH" >> ~/.profile
else
    echo "export PATH=$BIN_DIR:\$PATH" >> ~/.bashrc
    if [ -f ~/.zshrc ]; then
        echo "export PATH=$BIN_DIR:\$PATH" >> ~/.zshrc
    fi
fi

export PATH=$BIN_DIR:$PATH


