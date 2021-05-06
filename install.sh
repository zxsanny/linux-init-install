sudo apt-get update
sudo apt install make xclip wget dconf-editor gcc -y

#GO
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile
source ~/.bash_profile
rm -rf go*

#micro editor
git clone https://github.com/zyedidia/micro
cd micro
make build
sudo mv micro /usr/local/bin
cd ..
rm -rf micro
