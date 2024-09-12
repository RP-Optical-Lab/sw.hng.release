#!/bin/bash

prints () {
	echo "# "$@
}

usage () {
	prints usage:   ./update.sh file
	prints example: ./update.sh sw_hng-x.x.x.tar.gz
	exit 1
}

action () {
	prints $@
	eval $@
	if [ $? -ne 0 ]; then
		prints error: Command failed!
		usage
	fi
}

prints "#####################################################################"

if [ "$#" -ne 1 ]; then
    prints error: Provide version
    usage
fi

FILE="$1"
FILENAME="$(basename "$FILE" .tar.gz)"

SW_DIR="/home/max/sw.hng"
SCR_DIR="$SW_DIR/scripts"
SWIR_DIR="/home/max/sw.swir/scripts"

if [ ! -d "$SW_DIR" ]; then
	action mkdir -p $SW_DIR
fi
if [ ! -d "$SCR_DIR" ]; then
	action mkdir -p $SCR_DIR
fi
if [ ! -d "$SWIR_DIR" ]; then
	action mkdir -p $SWIR_DIR
fi

prints Update SW $FILE $FILENAME
action tar xvf $FILE -C $SW_DIR
action cp $SW_DIR/$FILENAME/README.md $SW_DIR
action cp $SW_DIR/$FILENAME/scripts/init.sh  $SCR_DIR/init.sh
action ln -sf $SCR_DIR/init.sh /home/max/sw.swir/scripts/init.sh
prints Done!
prints Restart the system!