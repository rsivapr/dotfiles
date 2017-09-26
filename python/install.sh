source python/path.sh
eval "$(pyenv init -)"

pyenv install -s 2.7.11
pyenv install -s 3.6.2
pyenv global 2.7.11

pip install --upgrade pip
pip install --upgrade pipenv
pip install --upgrade virtualenv
pip install --upgrade ansible
pip install --upgrade awscli
pip install --upgrade flake8
pip install --upgrade virtualenvwrapper
pip install --upgrade yapf
