#! /bin/bash

INKSCAPE="/usr/bin/inkscape"
SOURCE="signature-twotones-move.svg"

for member in `cat member-list.txt`
do
    cp $SOURCE img_host/$member.svg
    sed -i "s/MyNameIs15Chars/$member/" img_host/$member.svg
    echo Rendering img_host/$member.png
    $INKSCAPE --export-type="png" img_host/$member.svg # >/dev/null
    rm img_host/$member.svg
done

echo; echo "All done !"; echo "Press [Enter] to close this window..."
read && exit 0
