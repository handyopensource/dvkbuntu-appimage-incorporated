#!/bin/bash

mkdir -p "/usr/share/icons"
mkdir -p "/etc/skel/AppImage"
mkdir -p "/etc/skel/.local/share/applications/"

wget "https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/electronplayer.png" -O "/usr/share/icons/electronplayer.png"
wget "https://github.com/oscartbeaumont/ElectronPlayer/releases/download/v2.0.8-rc4/electronplayer-2.0.8.AppImage"

chmod +x electronplayer-2.0.8.AppImage

mv electronplayer-2.0.8.AppImage "/etc/skel/AppImage/electronplayer-2.0.8.AppImage"

cat << FIN > "/etc/skel/.local/share/applications/electronplayer.desktop"
[Desktop Entry]
Comment[fr_FR]=
Comment=
Exec="AppImage/electronplayer-2.0.8.AppImage"
GenericName[fr_FR]=Application pour voir des programmes en streaming
GenericName=Watching many streaming sites in one app
Icon=/usr/share/icons/electronplayer.png
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
