#!/usr/bin/env sh

setup_go(){
  echo "Installing latest Go"
  order golang-go
  go version
  echo "Go installed successfully"
}