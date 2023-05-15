#! /bin/bash
INKSCAPE="/usr/bin/inkscape"
SOURCES="flat flat-move gradient-move gradient-v3 gray twotones-move"

for  src in $SOURCES
do
	echo Rendering $src
	$INKSCAPE --export-filename=$src.png $src.svg
	$INKSCAPE --export-filename=$src-2X.png --export-dpi=192 $src.svg
done

echo; echo "All done !"; echo "Press [Enter] to close this window..."
read && exit 0
