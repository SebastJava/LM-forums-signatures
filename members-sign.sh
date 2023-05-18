#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
SOURCES=$(cat sources.txt)
MEMBERS=$(cat members-list.txt)

# Need spaces in the members-list ? Use non-breaking spaces ! ( )

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
