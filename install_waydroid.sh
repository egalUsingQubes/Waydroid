. /etc/os-release

# use whonix-proxy
export https_proxy=https://127.0.0.1:8082/

# add repo.waydro.id to hosts to download gpg-key and remove it after adding waydroid-key to apt-source
cp /etc/hosts hosts
echo "205.185.118.53	repo.waydro.id" >> /etc/hosts
wget https://repo.waydro.id/waydroid.gpg -O /usr/share/keyrings/waydroid.gpg
echo "deb [signed-by=/usr/share/keyrings/waydroid.gpg] https://repo.waydro.id/ $VERSION_CODENAME main" > /etc/apt/sources.list.d/waydroid.list
mv hosts /etc/hosts

# ususal stuff
sudo apt update
sudo apt dist-upgrade
sudo apt autoremove
sudo apt autoclean

# install the stuff
sudo apt install -y weston ca-certificates waydroid

# choose wisely ;-)
#waydroid init -s VANILLA
#waydroid init -s FOSS
waydroid init -s GAPPS

