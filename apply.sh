SRC_BASE_DIR=~/git/psunix

if ! hash git >/dev/null; then
  sudo apt install git
fi

mkdir -p $SRC_BASE_DIR
cd $SRC_BASE_DIR

if ! hash ansible-playbook >/dev/null; then
  ./bin/install_ansible.sh
fi

if [ ! -d "$SRC_BASE_DIR/dp" ]; then
  git clone https://github.com/psunix/dp.git
  cd dp
else
  cd dp
  git pull
fi

git submodule update --init

ansible-playbook ansible/desktop.yml --ask-become-pass

exit 0
