#!/usr/bin/env sh

setup_docker(){
    echo "Installing latest docker"
    cleanit docker docker-engine docker.io containerd runc
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    order docker-ce docker-ce-cli containerd.io docker-compose-plugin
    docker --version
    docker-compose --version
    echo "Docker installed successfully"
    echo "Setting up docker group"
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
    echo "Docker group setup successfully"
  }