#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
VERSIONS="flat-move.svg flat.svg gradient-move.svg gradient-v3.svg gray.svg twotones-move.svg"
MEMBERS=$(cat members-list.txt)

for version in $VERSIONS
do
	for member in $MEMBERS
	do
		name=$(echo $member | cut -d ":" -f 1); title=$(echo $member | cut -d ":" -f 2)
		cp $version img_host/$name-$version
		sed -i "s/MyNameIs15Chars/$name/" img_host/$name-$version
		sed -i "s/Moderator/$title/" img_host/$name-$version
		echo Rendering img_host/$name-$version
		$INKSCAPE --export-type="png" img_host/$name-$version # >/dev/null
		rm img_host/$name-$version
	done
done

echo; echo "All done !"; echo "Press [Enter] to close this window..."
read && exit 0
