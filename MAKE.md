# How to create your own version

1. Duplicate some existing "sign-VERSION_NAME.svg" and rename it. Edit using Inkscape.
1. Add your "sign-VERSION_NAME" to the `sources.txt`. (Without the `.svg` suffix.)
1. Add an image link to your new version into `preview.svg`. (Using Inkscape.)
1. Run `preview-export.sh` in your terminal.
1. Check this `preview.png` and the other PNG files.
1. Add a description in the `README.md`.
1. Run `members-sign.sh` in your terminal.
1. Check all the contents of the img_host directory.
1. Upload or git push everything.

NOTE: When adding new names and functions in the `members-list.txt`, never use plain spaces. Use non-breaking spaces instead, when needed. ( )
