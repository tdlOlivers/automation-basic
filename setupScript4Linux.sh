echo 'Running setup script'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
sudo apt-get update
sudo apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates vim
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get -y install nodejs
wget https://github.com/bkimminich/juice-shop/releases/download/v10.1.0/juice-shop-10.1.0_node12_linux_x64.tgz
tar zxvf juice-shop-10.1.0_node12_linux_x64.tgz
mv juice-shop_10.1.0/ juice-shop
git clone https://github.com/tdlOlivers/web-automation-basic.git
git clone https://github.com/tdlOlivers/api-automation-basic.git
echo 'Done'
