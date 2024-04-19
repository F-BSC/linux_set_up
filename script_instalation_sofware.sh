#!/bin/sh

### OS update
sudo apt update
sudo apt upgrade

### paquets manager
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt install gdebi 
sudo apt-get update

### Media
sudo apt install vlc

### Design
sudo snap install blender --classic dolphin
sudo snap install inkscape

### Development
sudo apt install git
sudo snap install code --classic
sudo snap install pycharm-community --classic
sudo python3 -m pip install --upgrade pip
sudo apt install texstudio
# R
sudo apt-get install r-base
# Rstudio by hand

### Science & Engineering
sudo apt-get install freecad
sudo apt-get install paraview

### Game
sudo snap install dolphin-emulator
sudo snap install steam
sudo snap install mgba


### Other and "hard" 
# Docker
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \Linux
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
# installation
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
# Openfoam
# sudo sh -c "wget -O - https://dl.openfoam.org/gpg.key > /etc/apt/trusted.gpg.d/openfoam.asc"
# sudo add-apt-repository http://dl.openfoam.org/ubuntu
# sudo apt-get update
# sudo apt-get -y install openfoam10
# sudo apt-get -y install openfoam11

# Kubernetes

# Flatpack
sudo apt install flatpak
# Add flatpak format to Ubuntu software manager
sudo apt install gnome-software-plugin-flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# for Epic Games & GOG
sudo flatpak install flathub com.heroicgameslauncher.hgl
sudo apt-get update


