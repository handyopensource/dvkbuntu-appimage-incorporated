#!/bin/bash

mkdir -p "$HOME/.icons/"
mkdir -p "$HOME/AppImage/"
mkdir -p "$HOME/.local/share/applications/"

wget "https://github.com/handyopensource/dvkbuntu-appimage-incorporated/raw/master/molotov.png" -O "$HOME/.icons/molotov.png"
wget "http://desktop-auto-upgrade.molotov.tv/linux/4.2.2/molotov.AppImage"
chmod +x molotov.AppImage

mv molotov.AppImage "$HOME/AppImage/molotov.AppImage"

cat << FIN > "$HOME/.local/share/applications/molotov.desktop"
[Desktop Entry]
Comment[fr_FR]=
Comment=
Exec=$HOME/AppImage/molotov.AppImage
GenericName[fr_FR]=Application pour voir la télévision française en streaming
GenericName=Watch french TV in a app
Icon=$HOME/.icons/molotov.png
MimeType=
Name[fr_FR]=Molotov
Name=Molotov
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
