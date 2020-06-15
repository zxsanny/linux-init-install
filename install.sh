#xclip wget, git
sudo apt install xclip wget git -y

#google chrome
if [ ! google-chrome>/dev/null; ] 
then
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo apt install ./google-chrome-stable_current_amd64.deb -y
	rm google-chrome-stable_current_amd64.deb -f
fi

#GO
if [ ! go>/dev/null; ]
then
	wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
	sudo tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
	echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bash_profile
	source ~/.bash_profile
	rm -rf go*
fi

#micro editor
if [ ! micro>/dev/null; ]
then
	git clone https://github.com/zyedidia/micro
	cd micro
	make build
	sudo mv micro /usr/local/bin
	cd ..
	rm -rf micro
fi

#visual style changes
wget https://launchpad.net/ubuntu/+archive/primary/+sourcefiles/ubuntu-mate-settings/16.10.6/ubuntu-mate-settings_16.10.6.tar.xz
tar -xf ubuntu-mate-settings_16.10.6.tar.xz
sudo cp ubuntu-mate-settings/usr/share/mate-panel/ /usr/share/ -r
rm -rf ubuntu*
mate-panel --reset --layout redmond
sudo apt-get install mate-applet-brisk-menu -y

#rider
sudo apt install snapd -y
sudo snap install rider --classic --edge