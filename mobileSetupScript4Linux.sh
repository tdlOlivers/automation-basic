#!/bin/bash

sudo apt update
sudo apt install snapd
sudo snap install --classic code # or code-insiders
sudo snap install android-studio --classic
sudo apt install git
sudo apt install npm
sudo apt install maven
sudo apt install default-jdk
sudo npm install -g appium
echo 'export JAVA_HOME=/usr/lib/jvm/java-1.11.0-openjdk-amd64' >> ~/.bashrc
echo 'export PATH=$JAVA_HOME/bin:$PATH' >> ~/.bashrc
echo 'export ANDROID_HOME=$HOME/Android/Sdk' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/tools' >> ~/.bashrc
echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.bashrc
wget https://github.com/appium/appium-desktop/releases/download/v1.15.1/Appium-linux-1.15.1.AppImage
chmod +x Appium-linux-1.15.1.AppImage
mv Appium-linux-1.15.1.AppImage Desktop/appium-desktop.AppImage
cd Desktop/
git clone https://github.com/tdlOlivers/mobile-automation-basic.git
cd mobile-automation-basic/
mvn compile
cd
android-studio
source ~/.bashrc
