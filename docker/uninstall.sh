#!/bin/bash

# Stop and disable Docker service
sudo systemctl stop docker
sudo systemctl disable docker

# Uninstall Docker packages
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io

# Remove Docker's official GPG key
sudo rm /usr/share/keyrings/docker-archive-keyring.gpg

# Remove Docker repository
sudo rm /etc/apt/sources.list.d/docker.list

# Update the package index
sudo apt-get update -y

# Display a message indicating successful uninstallation
echo "Docker has been successfully uninstalled."

# Optionally, you can remove Docker related configurations and images
# Be careful with this command as it will remove all Docker data
# sudo rm -rf /var/lib/docker
