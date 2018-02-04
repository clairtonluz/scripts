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
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

  # corrige bug do npm install fonte: http://stackoverflow.com/questions/21155922/error-installing-node-gyp-on-ubuntu
  apt-get install libicu-dev -y
  
  # instalando oracle jdk
  sudo apt-get install python-software-properties
  sudo add-apt-repository ppa:webupd8team/java
  sudo apt-get update
  #jdk6
  sudo apt-get install oracle-java6-installer
  #jdk7
  sudo apt-get install oracle-java7-installer
  #jdk8
  sudo apt-get install oracle-java8-installer

  git config --global user.name clairtonluz
  git config --global user.email clairton.c.l@gmail.com
  git config --global credential.helper 'cache --timeout=28800'

  echo 'export EDITOR=/usr/bin/vim' >> ~/.bashrc

  # adicionando alias para comandos do git
  curl https://gist.githubusercontent.com/clairtonluz/11374890/raw/55da20136c7964f031796d8bf645e93d7de533f8/alias.sh >> ~/.bashrc 

  nvm install v6.0.0
  nvm alias default 6.0.0
  npm install bower -g
  chown -R clairton.clairton .nvm/
  
  # correção de bug do intellij que trava o input do teclado.
  echo 'export IBUS_ENABLE_SYNC_MODE=1' >> ~/.profile
