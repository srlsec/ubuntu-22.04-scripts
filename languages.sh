##################################### Languages ######################################
# GO lang
sudo snap install go --classic
echo 'export PATH=$PATH:$HOME/go/bin' >> ~/.bashrc
source ~/.bashrc

# Python lang
sudo apt-get install -y python3
sudo apt-get install -y python-pip 
sudo apt-get install -y python3-pip

# Ruby lang 
sudo apt install ruby-full -y
sudo apt install ruby -y
sudo apt install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev -y

# Perl lang
sudo apt-get install -y perl 
sudo apt-get install -y libwww-perl 

# Java lang
sudo apt install openjdk-21-jdk
java -version

# Rust lang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
export PATH="$HOME/.cargo/bin:$PATH"
if [[ "$SHELL" == *"zsh" ]]; then
    echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.zshrc
    source ~/.zshrc
elif [[ "$SHELL" == *"bash" ]]; then
    echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
else
    echo "Shell not recognized. Add this to your shell profile manually:"
    echo 'export PATH="$HOME/.cargo/bin:$PATH"'
fi
