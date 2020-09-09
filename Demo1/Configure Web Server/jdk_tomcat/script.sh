#!/bin/bash

echo "This script will configure JDK"
apt update
apt -y install default-jdk
java -version

echo "This script will configure TomCat"
useradd -r -m -U -d /opt/tomcat -s /bin/false tomcat
wget -P /opt http://apache.volia.net/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31.tar.gz
tar xzvf /opt/apache-tomcat-9*tar.gz -C /opt/tomcat --strip-components=1
rm /opt/apache-tomcat-9.0.31.tar.gz
chgrp -R tomcat /opt/tomcat
chmod -R g+r /opt/tomcat/conf
chmod g+x /opt/tomcat/conf
chown -R tomcat /opt/tomcat/webapps
chown -R tomcat /opt/tomcat/work
chown -R tomcat /opt/tomcat/temp
chown -R tomcat /opt/tomcat/logs
update-java-alternatives -l
cp /tmp/Configure Web Server/jdk_tomcat/tomcat.service /etc/systemd/system/
systemctl daemon-reload
systemctl start tomcat
apt install ufw
ufw allow 8080
systemctl enable tomcat