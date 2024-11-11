#!/bin/bash

export DUKE_HOME_DIR="/media/fat/duke32"

export DUKE_LIB_PATH="$DUKE_HOME_DIR/arm-linux-gnueabihf:$DUKE_HOME_DIR/arm-linux-gnueabihf/pulseaudio"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$DUKE_LIB_PATH"
echo $LD_LIBRARY_PATH

export HOME=$DUKE_HOME_DIR
echo $HOME

cd $BLII_HOME_DIR

vmode -r 640 480 rgb32
taskset 03 $DUKE_HOME_DIR/duke3d
