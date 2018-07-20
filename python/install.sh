# Setup pyenv
pyenv install 3.6.4
pyenv install 3.4.3
pyenv install 2.7.14
pyenv global 3.6.4
eval "$(pyenv init -)"

# Install utility packages
pip3 install --upgrade virtualenv
pip3 install --upgrade pipenv
pip3 install --upgrade ansible
pip3 install --upgrade awscli
pip3 install --upgrade twine
pip3 install --upgrade pyyaml
pip3 install --upgrade black
pip3 install --upgrade pycodestyle
pip3 install --upgrade python-language-server
