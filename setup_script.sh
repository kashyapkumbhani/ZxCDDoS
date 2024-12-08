#!/bin/bash

# Install necessary packages
echo "Installing necessary packages..."
sudo apt-get update -y
sudo apt-get install git -y 
sudo apt-get install golang -y
sudo apt-get install perl -y
sudo apt-get install python3 -y
sudo apt-get install python2 -y
sudo apt-get install python3-pip -y

# Install Node.js
echo "Installing Node.js..."
curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt -y install nodejs

# Clone ZxCDDoS repository
echo "Cloning ZxCDDoS repository..."
git clone https://github.com/hoaan1995/ZxCDDoS/
cd ZxCDDoS/

# Install Python dependencies
echo "Installing Python dependencies..."
pip3 install -r requirements.txt

# Download and install Google Chrome
echo "Installing Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

# Set ulimit
echo "Setting ulimit..."
ulimit -n 999999

# Set file permissions and run the script
echo "Setting permissions and running c2.py..."
chmod 777 *
python3 c2.py
