#!/usr/bin/env bash


# libs needed for Ruby 

dnf install -y patch autoconf automake bison gcc-c++ libffi-devel libtool libyaml-devel patch readline-devel sqlite-devel zlib-devel redis


# another langs 

dnf install -y go rust 


# .... and games! ;)

dnf -y install openttd
