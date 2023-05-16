#! /bin/bash
INKSCAPE="/usr/bin/inkscape"
SOURCES="sign-flat sign-flat-move sign-gradient-move sign-gradient-v3 sign-gray sign-twotones-move preview"

for src in $SOURCES
do
	echo Rendering $src
	$INKSCAPE --export-filename=$src.png $src.svg
	$INKSCAPE --export-filename=$src-2X.png --export-dpi=192 $src.svg
done

echo; echo "All done !"; echo "Press [Enter] to close this window..."
read && exit 0
