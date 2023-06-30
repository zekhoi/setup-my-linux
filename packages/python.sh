#!/usr/bin/env sh

setup_python(){
  echo "Installing latest Python"
  order python3
  python3 --version
  echo "Python installed successfully"
  echo "Installing latest pip"
  order python3-pip
  pip3 --version
  echo "pip installed successfully"
}