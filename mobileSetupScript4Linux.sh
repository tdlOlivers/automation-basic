#!/bin/bash

sudo apt update
sudo apt install snapd
sudo snap install android-studio --classic
android-studio
echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> .bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> .bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> .bashrc
xsudo apt install default-jdk
echo 'export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64' >> .bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> .bashrc
source .bashrc
sudo apt install npm
sudo npm install -g appium
sudo snap install --classic code # or code-insiders
sudo apt install maven
wget https://github.com/appium/appium-desktop/releases/download/v1.15.1/Appium-linux-1.15.1.AppImage
chmod +x Appium-linux-1.15.1.AppImage
./Appium-linux-1.15.1.AppImage
