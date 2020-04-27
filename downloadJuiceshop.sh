echo 'Downloading juice shop'
wget https://github.com/bkimminich/juice-shop/releases/download/v10.1.0/juice-shop-10.1.0_node12_linux_x64.tgz
echo 'Unzipping juice-shop'
tar zxvf juice-shop-10.1.0_node12_linux_x64.tgz
echo 'Renaming juice-shop'
mv juice-shop_10.1.0/ juice-shop
echo 'Removing juice-shop zip'
rm juice-shop-10.1.0_node12_linux_x64.tgz
