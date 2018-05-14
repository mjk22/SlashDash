
Debian
====================
This directory contains files used to package divid/slashdash-qt
for Debian-based Linux systems. If you compile divid/slashdash-qt yourself, there are some useful files here.

## slashdash: URI support ##


slashdash-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install slashdash-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your diviqt binary to `/usr/bin`
and the `../../share/pixmaps/divi128.png` to `/usr/share/pixmaps`

slashdash-qt.protocol (KDE)

