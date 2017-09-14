sudo apt install git

cd ~
mkdir -p git
cd ~/git
git clone https://github.com/psunix/dp.git desktop-provisioning
cd desktop-provisioning
./bin/install_ansible.sh

exit 0
