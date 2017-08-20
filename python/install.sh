source python/path.sh
eval "$(pyenv init -)"

function plugin_install {
  if [[ ! -d ~/.pyenv/plugins/$2 ]]; then
    git clone $1 ~/.pyenv/plugins/$2
  fi
}

plugin_install git://github.com/pyenv/pyenv-doctor.git pyenv-doctor
plugin_install git://github.com/massongit/pyenv-pip-update.git pyenv-pip-update
plugin_install git://github.com/pyenv/pyenv-update.git pyenv-update

pyenv update
pyenv doctor || return 1

pyenv install -s 2.7.11
pyenv install -s 3.6.0
pyenv global 2.7.11

pip install --upgrade pip
pip install --upgrade virtualenv
pip install --upgrade pipsi
pyenv pip-update
pyenv rehash

function pipsi_install {
  [[ -d ~/.local/venvs/$2 ]] || pipsi --bin-dir=$HOME/bin install $1
}

pipsi_install ansible ansible
pipsi_install awscli awscli
pipsi_install boto boto
pipsi_install boto3 boto3
pipsi_install pylint pylint
pipsi_install virtualenvwrapper virtualenvwrapper
pipsi_install yapf yapf
