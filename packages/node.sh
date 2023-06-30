#!/usr/bin/env sh

setup_node() {
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
    source ~/.bashrc  
    echo "Installing NodeJS"
    echo "Select NodeJS version to install"
    echo "1. Latest"
    echo "2. LTS"
    echo "3. Custom (Enter version)"
    read -p "Enter your choice: " choice
    case $choice in
        1)
            nvm install node
            ;;
        2)
            nvm install --lts
            ;;
        3)
            read -p "Enter version: " version
            nvm install $version
            ;;
        *)
            echo "Invalid choice"
            ;;
    esac
    node -v 
    echo "NodeJS installed successfully"
}
