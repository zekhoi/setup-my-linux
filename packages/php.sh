#!/usr/bin/env sh

setup_php(){
  echo "Installing latest PHP"
  order php php-cli unzip
  php -v
  echo "PHP installed successfully"
  echo "Installing latest Composer"
  cd ~
  curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
  HASH=`curl -sS https://composer.github.io/installer.sig`
  php -r "if (hash_file('SHA384', '/tmp/composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
  sudo php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
  composer --version
  echo "Composer installed successfully"
}