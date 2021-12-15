#!/bin/bash


# install some tools

sudo dnf -y install vim mc htop chrome-gnome-shell libappindicator gnome-tweak-tool gedit gedit-plugins system-config-printer 
sudo dnf -y install pv sdcv stardict-dic-en aspell aspell-en aspell-pl ShellCheck

# install ffmpeg

sudo dnf -y install https://download1.rpmfusion.org/{free/fedora/rpmfusion-free,nonfree/fedora/rpmfusion-nonfree}-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install ffmpeg ffmpeg-libs compat-ffmpeg28 gstreamer1-libav gstreamer1-plugins-ugly 

# fix usb SD card bug.

sudo dnf -y install fuse-exfat exfat-utils

# ISO to pendrive tool

sudo dnf -y install livecd-tools spin-kickstarts


# .... and games! ;)

sudo dnf -y install openttd









