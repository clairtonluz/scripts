# atualizar sistema
sudo dnf update -y
sudo dnf upgrade -y
sudo dnf dist-upgrade -y

# RPM Fusion no Fedora 29
sudo dnf install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-29.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-29.noarch.rpm

# Instale os codecs multimídia do RPM Fusion
sudo dnf install amrnb amrwb faad2 flac ffmpeg gpac-libs lame libfc14audiodecoder mencoder mplayer x264 x265 gstreamer-plugins-espeak gstreamer-plugins-fc gstreamer-rtsp gstreamer-plugins-good gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg gstreamer1-plugins-base gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good

sudo dnf -y install vim git geany htop gimp wine

# Google Chrome
sudo dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

# NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# instala a ultima versão LTS do node
nvm install --lts

# configuração global para o GIT

git config --global user.name clairtonluz
git config --global user.email clairton.c.l@gmail.com
# salva a senha por 8 horas
git config --global credential.helper 'cache --timeout=29800'

# Vim como editor padrão
 echo 'export EDITOR=/usr/bin/vim' >> ~/.bashrc
