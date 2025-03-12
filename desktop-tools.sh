####################################### Utility #######################################
sudo apt install simplescreenrecorder -y
sudo apt-get install -y chromium-browser

# Drawio
sudo snap install drawio

sudo snap install cherrytree

# Install telegram
# install tailscale

# Install Termius
wget https://www.termius.com/download/linux/Termius.deb
sudo dpkg -i Termius.deb
rm Termius.deb
sudo apt install npm
sudo npm install -g asar


# Install mega-cmd
sudo snap install mega-cmd

# Google Chrome
echo -e "${GREEN}[*] Installing Google Chrome${NC}"
if command -v google-chrome &> /dev/null; then
    echo "Already installed"
else
    sudo apt-get install libxss1 libappindicator1 libindicator7
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install ./google-chrome*.deb -y
    rm google-chrome*.deb
    google-chrome --version | awk '{print $3}'
fi
