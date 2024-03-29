#!/bin/bash

# if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
  # sudo apt install software-properties-common -y
  # echo "Adding Ansible PPA"
  # sudo apt-add-repository ppa:ansible/ansible -y
# fi

if ! hash ansible >/dev/null 2>&1; then
  echo "Installing Ansible..."
  sudo apt update
  sudo apt install software-properties-common ansible git python3-apt -y
else
  echo "Ansible already installed"
fi
