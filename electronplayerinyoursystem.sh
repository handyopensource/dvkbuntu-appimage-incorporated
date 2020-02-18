#!/bin/bash

mkdir -p "$HOME/.icons/"
mkdir -p "$HOME/AppImage/"
mkdir -p "$HOME/.local/share/applications/"

wget "https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/electronplayer.png" -O "$HOME/.icons/electronplayer.png"
wget "https://github.com/oscartbeaumont/ElectronPlayer/releases/download/v2.0.8-rc2/electronplayer-2.0.8.AppImage" -o "$HOME/AppImage/electronplayer-2.0.8.AppImage"

chmod +x "$HOME/AppImage/electronplayer-2.0.8.AppImage"

cat << FIN > "$HOME/.local/share/applications/electronplayer.desktop"
[Desktop Entry]
Comment[fr_FR]=
Comment=
Exec=$HOME/AppImage/electronplayer-2.0.8.AppImage
GenericName[fr_FR]=Application pour voir des programmes en streaming
GenericName=Watch streaming site in one app
Icon=$HOME/.icons/electronplayer.png
MimeType=
Name[fr_FR]=ElectronPlayer
Name=ElectronPlayer
Path=$HOME
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

rm electronplayer-2.0.8.AppImage
