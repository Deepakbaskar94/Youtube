#!/bin/bash

# Stop the MongoDB service
sudo systemctl stop mongod

# Disable MongoDB from starting on system boot
sudo systemctl disable mongod

# Remove MongoDB
sudo apt-get purge -y mongodb-org*

# Remove MongoDB data and configuration files
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb

# Remove MongoDB user and group
sudo userdel mongodb
sudo groupdel mongodb

# Print a message indicating successful uninstallation
echo "MongoDB has been uninstalled."
