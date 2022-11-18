#!/usr/bin/env bash

# Change host name

hostnamectl set-hostname "Baltazar"

# Configure DNF for Faster Downloads of Packages

echo 'max_parallel_downloads=10' >> /etc/dnf/dnf.conf
echo 'fastestmirror=true' >> /etc/dnf/dnf.conf
echo 'deltarpm=true' >> /etc/dnf/dnf.conf

# Enabling the RPM Fusion repositories

dnf install -y  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Enabling Flathub repository

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# libs needed for Ruby 

dnf install -y patch autoconf automake bison gcc-c++ libffi-devel libtool libyaml-devel patch readline-devel sqlite-devel zlib-devel redis openssl openssl-devel


# another langs 

dnf install -y go 


# .... and games! ;)

dnf -y install openttd


# Install Multimedia Plugins

dnf install -y gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf install -y lame\* --exclude=lame-devel
dnf group upgrade --with-optional Multimedia

# Install GNOME tools and apps

dnf install -y  evolution chromium fedora-chromium-config-gnome glade gitg jetbrains-mono-fonts 
