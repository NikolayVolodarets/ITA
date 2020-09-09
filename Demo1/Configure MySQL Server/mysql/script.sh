#!/bin/bash

wget https://dev.mysql.com/get/mysql-apt-config_0.8.15-1_all.deb
apt -y install gnupg
dpkg -i mysql-apt-config_0.8.15-1_all.deb
apt update
apt -y install mysql-server