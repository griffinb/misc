sudo apt update
sudo apt -y dist-upgrade

# Git
sudo apt install -y git

# Oh my zsh
sudo apt install -y zsh
sudo sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chown vagrant:vagrant .zshrc

# Editors
sudo apt install -y vim

# Python
sudo apt install -y build-essential python-dev libffi-dev libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
    python-pip python3-pip libpq-dev

# pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
echo 'export PATH="/home/vagrant/.pyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

# Change default shell
sudo passwd vagrant
chsh -s /bin/zsh # Logout/login after this

pyenv update
pyenv install 2.7.14
pyenv install 3.6.3
# pip install virtualenv

# aws command line tools
sudo pip install awscli
sudo pip install awslogs

# Docker
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg |  sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt -y install docker-ce
sudo apt -y install docker-ce=18.03.0~ce-0~ubuntu
# Only use if needed:
# usermod -aG docker $USER
