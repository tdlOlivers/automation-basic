echo 'Running setup script'
echo 'Installing git'
sudo apt-get install git
echo 'Downloading google chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo 'Installing google chrome'
sudo apt install ./google-chrome-stable_current_amd64.deb
echo 'Removing installation'
rm google-chrome-stable_current_amd64.deb
echo 'Updating system'
sudo apt-get update
echo 'Installing pre-requisites for node12'
sudo apt-get -y install curl dirmngr apt-transport-https lsb-release ca-certificates vim
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
echo 'Installing node'
sudo apt-get -y install nodejs
echo 'Downloading juice shop'
wget https://github.com/bkimminich/juice-shop/releases/download/v10.1.0/juice-shop-10.1.0_node12_linux_x64.tgz
echo 'Unzipping juice-shop'
tar zxvf juice-shop-10.1.0_node12_linux_x64.tgz
echo 'Renaming juice-shop'
mv juice-shop_10.1.0/ juice-shop
echo 'Removing juice-shop zip'
rm juice-shop-10.1.0_node12_linux_x64.tgz
echo 'Installing maven'
sudo apt-get install maven
echo 'Cloning automation projects'
git clone https://github.com/tdlOlivers/web-automation-basic.git
cd web-automation-basic/
mvn compile
cd ..
git clone https://github.com/tdlOlivers/api-automation-basic.git
cd api-automation-basic/
mvn compile
cd ..
echo 'Done'
