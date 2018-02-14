sudo apt install git

cd ~
mkdir -p git/psunix
cd ~/git/psunix
git clone https://github.com/psunix/dp.git desktop-provisioning
cd desktop-provisioning
./bin/install_ansible.sh

ansible-galaxy install rvm_io.ruby
ansible-playbook ansible/desktop.yml --ask-become-pass

exit 0
