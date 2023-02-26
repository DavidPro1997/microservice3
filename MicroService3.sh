#!/bin/bash

apt update
apt -y upgrade
apt install rename
apt install vsftpd
apt install openssh-server
apt install -y openjdk-11-jdk
apt install -y wget
apt install unzip
apt install -y git 
apt install -y python3
apt install -y python3-pip
pip3 install  python-json-logger
pip3 install python3-pika
pip3 install tika
pip3 install selenium
pip3 install tld
pip3 install beautifulsoup4
pip3 install docx2txt
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install -y ./google-chrome-stable_current_amd64.deb
wget https://chromedriver.storage.googleapis.com/108.0.5359.71/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
apt install -y poppler-utils
mkdir /app
mkdir /app/result
mv chromedriver /app/chromedriver
cd /app
cp -r microservice3/* /app
rm -r microservice3/
chmod 777 /app/*
python3 mod1.py
