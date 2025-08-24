#!/usr/bin/env bash

# misc

sudo apt install -y fonts-jetbrains-mono fonts-jetbrains-mono-web

# libs

sudo apt install -y libcupsimage2t64

# tools

sudo apt install -y curl mc neovim vim fastfetch pandoc imagemagick shellcheck htop


# langs

sudo apt install -y php composer php-xdebug

sudo apt install -y virtualenv

sudo apt install -y go gopls

sudo apt install -y npm

# IDE


curl -f https://zed.dev/install.sh | sh


# PHP utils

curl -Lo phpactor.phar https://github.com/phpactor/phpactor/releases/latest/download/phpactor.phar
chmod a+x phpactor.phar
mv phpactor.phar ~/.local/bin/phpactor


# Symfony

curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | sudo -E bash
sudo apt install symfony-cli


# games :)

 sudo apt install -y openttd
