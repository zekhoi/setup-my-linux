#!/usr/bin/env sh
alias cleanit='sudo apt remove -y'
alias order='sudo apt install -y'
alias latest='sudo apt update -y && sudo apt upgrade -y && sudo dist-upgrade -y && sudo aptremove -y && sudo apt autoclean -y'

source ./packages/node.sh
source ./packages/go.sh
source ./packages/php.sh
source ./packages/python.sh
source ./packages/docker.sh
source ./packages/dev.sh
source ./packages/gitlab.sh


pre_setup(){

  # Read lines from a file
  while IFS= read -r line
  do
    # Remove leading and trailing whitespace from the line
    line=$(echo "$line" | awk '{$1=$1};1')

    # Append the line to the variable with a space
    concatenated_lines+=" $line"
  done < requirements.txt

  # Trim leading whitespace from the concatenated lines
  concatenated_lines=${concatenated_lines#" "}

  # latest
  sudo apt install -y $concatenated_lines
}