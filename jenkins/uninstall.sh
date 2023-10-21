#!/bin/bash

# Check if the user has sudo privileges
if [ "$(id -u)" -ne 0 ]; then
  echo "Please run this script with sudo or as root."
  exit 1
fi

# Stop Jenkins service
systemctl stop jenkins

# Uninstall Jenkins package and remove its configuration
apt-get remove --purge jenkins -y

# Remove Jenkins home directory (optional)
rm -rf /var/lib/jenkins

# Remove Jenkins user (optional)
userdel jenkins

# Remove Jenkins repository (optional)
rm /etc/apt/sources.list.d/jenkins.list

# Update package information
apt-get update

# Clean up unused dependencies (optional)
apt-get autoremove -y

echo "Jenkins has been completely uninstalled."
