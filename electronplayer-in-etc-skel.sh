#!/bin/bash

mkdir -p "/etc/skel/.icons/"
mkdir -p "/etc/skel/AppImage/"
mkdir -p "/etc/skel/.local/share/applications/"

wget "https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/electronplayer.png" -O "/etc/skel/.icons/electronplayer.png"
wget "https://github.com/oscartbeaumont/ElectronPlayer/releases/download/v2.0.8-rc2/electronplayer-2.0.8.AppImage"

chmod +x electronplayer-2.0.8.AppImage

mv electronplayer-2.0.8.AppImage "/etc/skel/AppImage/electronplayer-2.0.8.AppImage"

cat << FIN > "/etc/skel/.local/share/applications/electronplayer.desktop"
[Desktop Entry]
Comment[fr_FR]=
Comment=
Exec="AppImage/electronplayer-2.0.8.AppImage"
GenericName[fr_FR]=Application pour voir des programmes en streaming
GenericName=Watch streaming site in one app
Icon=".icons/electronplayer.png"
MimeType=
Name[fr_FR]=ElectronPlayer
Name=ElectronPlayer
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
