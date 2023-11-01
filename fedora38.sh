#!/usr/bin/env bash

# Change host name

hostnamectl set-hostname "Baltazar"

# Configure DNF for Faster Downloads of Packages

echo 'max_parallel_downloads=10' >> /etc/dnf/dnf.conf
echo 'fastestmirror=true' >> /etc/dnf/dnf.conf
echo 'deltarpm=true' >> /etc/dnf/dnf.conf

# system update

dnf update -y

# Enabling the RPM Fusion repositories

dnf install -y  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Enabling Flathub repository

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# libs needed for Ruby 

dnf install -y patch autoconf automake bison gcc-c++ libffi-devel libtool libyaml-devel patch readline-devel sqlite-devel zlib-devel redis openssl openssl-devel npm postgresql-devel mysql-devel ruby-devel
dnf install -y nodejs yarnpkg redis
# Python

dnf install -y python3-virtualenv python3-pip python3-tkinter

# Tools

dnf install -y neofetch mc pandoc ShellCheck mediainfo pv vim libreoffice-base libreoffice-draw thunderbird zsh htop

# tools for nvim

dnf install -y neovim ripgrep 

# Fonts 

dnf install -y jetbrains-mono-fonts

# .... and games! ;)

dnf -y install openttd


# Install Multimedia Plugins

dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf install -y lame\* --exclude=lame-devel
dnf group upgrade -y --with-optional Multimedia

# Install GNOME tools and apps

dnf install -y  evolution chromium fedora-chromium-config-gnome glade gitg  filezilla gnome-commander gnome-tweak-tool

# Install KDE tools and apps
#dnf install -y krita kdenlive kdevelop 

# Install VSCode

rpm --import https://packages.microsoft.com/keys/microsoft.asc
sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update
dnf install -y code


