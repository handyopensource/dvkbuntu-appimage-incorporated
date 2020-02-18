#!/bin/bash

mkdir -p "/usr/share/icons"
mkdir -p "/etc/skel/AppImage"
mkdir -p "/etc/skel/.local/share/applications/"

wget "https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/molotov.png" -O "/usr/share/icons/molotov.png"

wget "http://desktop-auto-upgrade.molotov.tv/linux/4.2.2/molotov.AppImage"

chmod +x molotov.AppImage

mv molotov.AppImage "/etc/skel/AppImage/molotov.AppImage"

cat << FIN > "/etc/skel/.local/share/applications/molotov.desktop"
[Desktop Entry]
Comment[fr_FR]=
Comment=
Exec="AppImage/molotov.AppImage"
GenericName[fr_FR]=Application pour voir la télévision française en streaming
GenericName=Watch french TV in a app
Icon=/usr/share/icons/molotov.png
MimeType=
Name[fr_FR]=Molotov
Name=Molotov
Path=
Categories=AudioVideo;Utility;
StartupNotify=true
Terminal=false
TerminalOptions=
Type=Application
X-DBUS-ServiceName=
X-DBUS-StartupType=
X-KDE-SubstituteUID=false
X-KDE-Username=
FIN
