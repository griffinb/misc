sudo apt-get update

# Editors
sudo apt-get install -y vim
sudo apt-get install -y atom

# Terminal emulator
sudo apt-get install -y terminator

# Git
sudo apt-get install -y git

# Curl
sudo apt-get install -y curl

# Oh my zsh
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Browsers
snap install firefox
snap install chromium

# REST client
echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
    | sudo apt-key add -
sudo apt-get update
sudo apt-get install insomnia

# Python
sudo apt-get install -y build-essential python-dev libffi-dev libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev llvm libncurses5-dev libncursesw5-dev \
python-pip python3-pip libpq-dev
pip install virtualenv

# aws command line tools
pip install awscli
pip install awslogs

# Signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop

# Arc Theme
sudo apt-get install autoconf
sudo apt-get install automake
sudo apt-get install libgtk-3-dev
sudo apt-get install gnome-themes-standard
sudo apt-get install gtk2-engines-murrine
sudo apt-get install gnome-tweak-tool
git clone https://github.com/horst3180/arc-theme --depth 1 && cd arc-theme
./autogen.sh --prefix=/usr
sudo make install

# Arc Icon Theme
git clone https://github.com/horst3180/arc-icon-theme --depth 1 && cd arc-icon-theme
./autogen.sh --prefix=/usr
sudo make install

# Moka Icons
sudo add-apt-repository ppa:moka/daily
sudo apt-get update
sudo apt-get install moka-icon-theme faba-icon-theme faba-mono-icons

# Arc Firefox theme
git clone https://github.com/horst3180/arc-firefox-theme && cd arc-firefox-theme
./autogen.sh --prefix=/usr
make mkxpi

# Set Key Repeats
gsettings set org.gnome.desktop.peripherals.keyboard delay "uint32 300"
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval "uint32 10"

# Docker

# Setup dev repos
mkdir -p ~/code
git clone git@github.com:griffinb/dotfiles.git ~/code/dotfiles
