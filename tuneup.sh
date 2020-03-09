#!/bin/bash


# install some tools

sudo dnf -y install vim mc htop chrome-gnome-shell libappindicator gnome-tweak-tool gedit gedit-plugins system-config-printer pv


# install java developmnet tools

sudo dnf -y install maven git gitflow gradle vagrant wildfly java-8 java-11 gitk


# install docker

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo  https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf config-manager --set-enabled docker-ce-edge
sudo dnf -y install docker-ce

sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER

mkdir /home/$USER/.docker
sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
sudo chmod g+rwx "/home/$USER/.docker" -R

sudo systemctl enable docker


# install virtualbox

sudo cd /etc/yum.repos.d/
sudo wget http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo
sudo dnf update
sudo dnf -y install binutils gcc make patch libgomp glibc-headers glibc-devel kernel-headers kernel-devel dkms
sudo dnf -y install VirtualBox-5.2
sudo /usr/lib/virtualbox/vboxdrv.sh setup
sudo usermod -a -G vboxusers $USER

# install ffmpeg

sudo dnf -y install https://download1.rpmfusion.org/{free/fedora/rpmfusion-free,nonfree/fedora/rpmfusion-nonfree}-release-$(rpm -E %fedora).noarch.rpm
sudo dnf -y install ffmpeg ffmpeg-libs compat-ffmpeg28 gstreamer1-libav gstreamer1-plugins-ugly 

# fix usb SD card bug.

sudo dnf -y install fuse-exfat exfat-utils

# ISO to pendrive tool

sudo dnf -y install livecd-tools spin-kickstarts

# fix iPhone problem

sudo dnf -y install libimobiledevice-utils


# .... and games! ;)

sudo dnf -y install openttd

sudo dnf -y install sdcv stardict-dic-en aspell aspell-en aspell-pl texlive-polski







