#!/usr/bin/env sh

setup_gitlab(){
  echo "Installing gitlab"
  cd /tmp
  curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh
  less /tmp/script.deb.sh
  sudo bash /tmp/script.deb.sh
  sudo apt install gitlab-ce
  sudo ufw enable
  sudo ufw allow http
  sudo ufw allow https
  sudo ufw allow OpenSSH
  sudo ufw status
  echo "Gitlab installed successfully"
}