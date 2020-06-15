#xclip wget, git
sudo apt install xclip wget git -y
sudo apt install dconf-editor -y

#google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb -y
rm google-chrome-stable_current_amd64.deb -f

#GO
wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile
source ~/.bash_profile
rm -rf go

#micro editor
git clone https://github.com/zyedidia/micro
cd micro
make build
mv micro /usr/local/bin
cd ..
rm -rf micro

