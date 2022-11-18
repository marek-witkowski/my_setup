#!/usr/bin/env bash


# Enabling the RPM Fusion repositories

dnf install -y  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf install -y  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm



# libs needed for Ruby 

dnf install -y patch autoconf automake bison gcc-c++ libffi-devel libtool libyaml-devel patch readline-devel sqlite-devel zlib-devel redis openssl openssl-devel


# another langs 

dnf install -y go rust 


# .... and games! ;)

dnf -y install openttd
