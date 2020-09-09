#!/bin/bash

echo "This script will configure apt"
echo "Deleting /etc/apt/sources.list..."
rm /etc/apt/sources.list
echo "Successfully!"
echo "Copying updated sources.list to /etc/apt/..."
cp /tmp/Configure MySQL Server/apt/sources.list /etc/apt/
echo "Successfully!"
echo "Updating the repository..."
apt update
echo "Applying updates..."
apt dist-upgrade