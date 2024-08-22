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

DESDIR="/home/max/sw.hng"
SCR_DIR="$DESDIR/scripts"

if [ ! -d "$DESDIR" ]; then
	action mkdir -p $DESDIR
fi
if [ ! -d "$SCR_DIR" ]; then
	action mkdir -p $SCR_DIR
fi

prints Update SW $FILE $FILENAME
action tar xvf $FILE -C $DESDIR
action cp $DESDIR/$FILENAME/README.md $DESDIR
action cp $DESDIR/$FILENAME/scripts/init.sh  $SCR_DIR/init.sh
action ln -sf $DESDIR/$FILENAME/scripts/init.sh /home/max/sw.swir/scripts/init.sh
prints Done!
prints Restart the system!