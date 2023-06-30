#!/usr/bin/env sh

setup_user(){
  read -p "Enter username: " username
  adduser $username
  usermod -aG sudo $username
  echo "User $username created"
  echo "User $username added to sudo group"
}