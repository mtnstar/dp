sudo apt install git

cd ~
mkdir -p git
cd ~/git
git clone https://github.com/psunix/dp.git desktop-provisioning
cd desktop-provisioning
./bin/install_ansible.sh

ansible-playbook ansible/desktop.yml --ask-become-pass

exit 0
