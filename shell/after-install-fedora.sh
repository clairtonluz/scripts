# atualizar sistema
sudo dnf update -y

sudo dnf -y install vim git htop gimp zsh java-1.8.0-openjdk-devel java-11-openjdk-devel

# Google Chrome
sudo dnf install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

git config --global user.name "Clairton Luz"
git config --global user.email clairton.c.l@gmail.com
git config --global credential.helper store

# Install docker
sudo dnf -y install dnf-plugins-core

sudo dnf config-manager \
    --add-repo \
    https://download.docker.com/linux/fedora/docker-ce.repo

sudo dnf install docker-ce docker-ce-cli containerd.io

# Oh My ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# plugins=(
#         git 
#         docker 
#         docker-compose
#         gradle
#         vscode
#         fedora
#         dnf
#         node
#         npm
#         asdf
# )


# Vim como editor padrão
 echo 'export EDITOR=/usr/bin/vim' >> ~/.bashrc
 echo 'export EDITOR=/usr/bin/vim' >> ~/.zshrc

# Desabilitar alguns atalhos usado na IDEs de desenvolvimento
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Super><Shift>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Super><Shift>Page_Down']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Super>Page_Up']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Super>Page_Down']"
