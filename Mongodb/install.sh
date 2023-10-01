#!/bin/bash

# Import MongoDB public GPG key
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

# Create a list file for MongoDB
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu $(lsb_release -cs)/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Update the package list
sudo apt-get update

# Install MongoDB
sudo apt-get install -y mongodb-org

# Start the MongoDB service
sudo systemctl start mongod

# Enable MongoDB to start on system boot
sudo systemctl enable mongod

# Print MongoDB status
sudo systemctl status mongod
