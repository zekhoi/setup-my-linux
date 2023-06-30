#!/usr/bin/env sh

setup_dev(){
  echo "Installing dev tools"
  wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
  sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
  order git code
  git --version
  code --version
  echo "Dev tools installed successfully"
}