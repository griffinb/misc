apt update
apt -y dist-upgrade

# Editors
apt install -y vim

# Git
apt install -y git

# Curl
apt install -y curl

# Python
apt install -y build-essential python-dev libffi-dev libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
python-pip python3-pip libpq-dev
pip install virtualenv

# aws command line tools
pip install awscli
pip install awslogs

# Docker
apt update
apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt -y install docker-ce
apt -y install docker-ce=18.03.0~ce-0~ubuntu
# Only use if needed:
# usermod -aG docker $USER

# pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
source .zshrc
pyenv update
pyenv install 2.7.14
pyenv install 3.6.3

# Oh my zsh
apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
