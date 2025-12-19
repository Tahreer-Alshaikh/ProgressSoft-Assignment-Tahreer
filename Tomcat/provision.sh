#!/bin/bash
set -e

echo "=== Updating packages ==="
apt update -y

echo "=== Installing Java 8 and utilities ==="
apt install -y openjdk-8-jdk wget tar curl

echo "=== Downloading Tomcat 9 ==="
wget https://downloads.apache.org/tomcat/tomcat-9/v9.0.111/bin/apache-tomcat-9.0.111.tar.gz -P /opt

echo "=== Extracting Tomcat ==="
cd /opt
tar -xvzf apache-tomcat-9.0.111.tar.gz
mv apache-tomcat-9.0.111 tomcat9

echo "=== Setting execute permissions for Tomcat scripts ==="
chmod +x /opt/tomcat9/bin/*.sh

echo "=== Tomcat 9 installation completed ==="
echo "To start Tomcat inside the container:"
echo "  /opt/tomcat9/bin/startup.sh"

