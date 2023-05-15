#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
VERSIONS="flat-move.svg flat.svg gradient-move.svg gradient-v3.svg gray.svg twotones-move.svg"

for version in $VERSIONS
do
	for member in `cat member-list.txt`
	do
		cp $version img_host/$member-$version
		sed -i "s/MyNameIs15Chars/$member/" img_host/$member-$version
		echo Rendering img_host/$member-$version
		$INKSCAPE --export-type="png" img_host/$member-$version # >/dev/null
		rm img_host/$member-$version
	done
done

echo; echo "All done !"; echo "Press [Enter] to close this window..."
read && exit 0
