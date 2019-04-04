sudo apt update
sudo apt -y dist-upgrade

# Editors
sudo apt install -y vim
sudo apt install -y atom

# Terminal emulator
sudo apt install -y terminator

# Git
sudo apt install -y git

# Curl
sudo apt install -y curl

# Oh my zsh
sudo apt install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Mouse scrolling adjustment app
sudo apt-get install imwheel

# Browsers
sudo snap install firefox
sudo snap install chromium

# REST client
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt update
sudo apt -y install insomnia

# Python
sudo apt install -y build-essential python-dev libffi-dev libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
python-pip python3-pip libpq-dev
pip install virtualenv

# aws command line tools
pip install awscli
pip install awslogs

# Signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install -y signal-desktop

# Arc Theme
sudo apt install -y autoconf
sudo apt install -y automake
sudo apt install -y libgtk-3-dev
sudo apt install -y gnome-themes-standard
sudo apt install -y gtk2-engines-murrine
sudo apt install -y gnome-tweak-tool
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install

# Arc Icon Theme
sudo apt install autoconf
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# Moka Icons
sudo add-apt-repository ppa:snwh/ppa
sudo apt update
sudo apt -y install moka-icon-theme faba-icon-theme faba-mono-icons

# Arc Firefox theme
git clone https://github.com/horst3180/arc-firefox-theme && cd arc-firefox-theme
./autogen.sh --prefix=/usr
make mkxpi

# Set Key Repeats
gsettings set org.gnome.desktop.peripherals.keyboard delay "uint32 300"
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval "uint32 10"

# Docker
sudo apt remove docker docker-engine docker.io
sudo apt update
sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt -y install docker-ce
# Run the following command to get the latest version:
# apt-cache madison docker-ce
sudo apt-get install docker-ce=17.12.1~ce-0~ubuntu
# Only use if needed:
# sudo usermod -aG docker $USER

# pyenv
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
pyenv update
echo 'export PATH="/home/griffin/.pyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc

pyenv install 2.7.16
pyenv install 3.7.3
