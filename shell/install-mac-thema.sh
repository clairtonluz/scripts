#!/bin/bash
sudo add-apt-repository ppa:noobslab/macbuntu -y
sudo apt-get update -y

# install icons e theme
sudo apt-get install macbuntu-os-icons-lts-v7 -y
sudo apt-get install macbuntu-os-ithemes-lts-v7 -y

# install spotlight
sudo apt-get install albert -y

# install dock
sudo apt-get install plank -y
sudo apt-get install macbuntu-os-plank-theme-lts-v7 -y

# replace ubuntu icon to mac icon on panel
cd && wget -O Mac.po http://drive.noobslab.com/data/Mac/change-name-on-panel/mac.po
cd /usr/share/locale/en/LC_MESSAGES; sudo msgfmt -o unity.mo ~/Mac.po;rm ~/Mac.po;cd
wget -O launcher_bfb.png http://drive.noobslab.com/data/Mac/launcher-logo/apple/launcher_bfb.png
sudo mv launcher_bfb.png /usr/share/unity/icons/

# tools
sudo apt-get install unity-tweak-tool
sudo apt-get install gnome-tweak-tool

# altera icones do libreoffice
sudo apt-get install libreoffice-style-sifr

# mac fonts
wget -O mac-fonts.zip http://drive.noobslab.com/data/Mac/macfonts.zip
sudo unzip mac-fonts.zip -d /usr/share/fonts; rm mac-fonts.zip
sudo fc-cache -f -v
