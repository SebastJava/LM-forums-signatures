#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
SOURCES="sign-flat sign-flat-move sign-gradient-move sign-gradient-v3 sign-gray sign-twotones-move"
MEMBERS=$(cat members-list.txt)

for src in $SOURCES
do
	for member in $MEMBERS
	do
		name=$(echo $member | cut -d ":" -f 1); title=$(echo $member | cut -d ":" -f 2)
		cp $src.svg img_host/$name-$src.svg
		sed -i "s/MyNameIs15Chars/$name/" img_host/$name-$src.svg
		sed -i "s/MyTitleIs/$title/" img_host/$name-$src.svg
		echo Rendering img_host/$name-$src
		$INKSCAPE --export-type="png" img_host/$name-$src.svg # >/dev/null
		rm img_host/$name-$src.svg
	done
done

echo; echo "All done !"; echo "Press [Enter] to close this window..."
read && exit 0
