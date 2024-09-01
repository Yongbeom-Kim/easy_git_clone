#!/bin/bash
CONFIG_HOME=${XDG_CONFIG_HOME:-"$HOME/.config"}/easy_git
export BIN_DIR=$CONFIG_HOME/bin

rm -rf $BIN_DIR
mkdir -p $BIN_DIR

# Scripts dir
SCRIPTS_DIR=$(realpath $(dirname $0))


find $SCRIPTS_DIR -maxdepth 1 -not -name '*.sh' -not -type d | xargs -I {} bash -c 'ln -s {} $BIN_DIR/$(basename {})'

# Add BIN_DIR to PATH
./scripts/write_to_profile.sh "export PATH=$BIN_DIR:\$PATH"
export PATH=$BIN_DIR:$PATH


