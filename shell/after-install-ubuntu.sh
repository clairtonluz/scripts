#!/bin/bash
{
  echo "This script requires superuser access to install apt packages."
  echo "You will be prompted for your password by sudo."

  # clear any previous sudo permission
  sudo -k

  # run inside sudo
  sudo bash <<SCRIPT
  apt-get update -y
  apt-get upgrade -y
  apt-get dist-upgrade -y
  apt-get install git -y
  apt-get install geany -y
  apt-get install htop -y
  apt-get install vim -y
  apt-get install rake -y
  apt-get install mongodb -y
  apt-get install gimp -y
  apt-get install nautilus-open-terminal -y
  #INSTALL VIM JANUS
  curl -Lo- https://bit.ly/janus-bootstrap | bash
  # INSTALL NVM
  apt-get install build-essential libssl-dev
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | bash

  # corrige bug do npm install fonte: http://stackoverflow.com/questions/21155922/error-installing-node-gyp-on-ubuntu
  apt-get install libicu-dev -y

  git config --global user.name clairtonluz
  git config --global user.email clairton.c.l@gmail.com
  git config --global credential.helper 'cache --timeout=28800'
  SCRIPT
}
