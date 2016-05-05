#!/bin/bash
  apt-get update -y
  apt-get upgrade -y
  apt-get dist-upgrade -y
  sudo apt-get install git geany htop vim rake mongodb gimp chromium-browser unity-tweak-tool -y
  # PACOTE DE CODECS
  sudo apt-get install ubuntu-restricted-extras -y
  #INSTALL VIM JANUS
  curl -Lo- https://bit.ly/janus-bootstrap | bash
  # INSTALL NVM
  apt-get install build-essential libssl-dev
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash

  # corrige bug do npm install fonte: http://stackoverflow.com/questions/21155922/error-installing-node-gyp-on-ubuntu
  apt-get install libicu-dev -y
  
  # instalando jdk
  sudo wget -qO- https://gist.githubusercontent.com/clairtonluz/4bcf916490b155388104/raw/93e51bd6d696441932c58746c8859b66b4716d3c/java-setup.sh | sh

  git config --global user.name clairtonluz
  git config --global user.email clairton.c.l@gmail.com
  git config --global credential.helper 'cache --timeout=28800'

  echo 'export EDITOR=/usr/bin/vim' >> ~/.bashrc

  # adicionando alias para comandos do git
  curl https://gist.githubusercontent.com/clairtonluz/11374890/raw/55da20136c7964f031796d8bf645e93d7de533f8/alias.sh >> ~/.bashrc 

  nvm install v5.5.0
  nvm alias default 5.5.0
  npm install bower -g
  chown -R clairton.clairton .nvm/
  
  # correção de bug do intellij que trava o input do teclado.
  echo 'export IBUS_ENABLE_SYNC_MODE=1' >> ~/.profile
