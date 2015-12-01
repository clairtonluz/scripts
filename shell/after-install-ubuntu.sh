#!/bin/bash
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
  apt-get install chromium-browser -y
  apt-get install nautilus-open-terminal -y
  #INSTALL VIM JANUS
  curl -Lo- https://bit.ly/janus-bootstrap | bash
  # INSTALL NVM
  apt-get install build-essential libssl-dev
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | bash

  # corrige bug do npm install fonte: http://stackoverflow.com/questions/21155922/error-installing-node-gyp-on-ubuntu
  apt-get install libicu-dev -y
  
  # instalando jdk
  sudo wget -qO- https://gist.githubusercontent.com/clairtonluz/4bcf916490b155388104/raw/93e51bd6d696441932c58746c8859b66b4716d3c/java-setup.sh | sh

  git config --global user.name clairtonluz
  git config --global user.email clairton.c.l@gmail.com
  git config --global credential.helper 'cache --timeout=28800'
