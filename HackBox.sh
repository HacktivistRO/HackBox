#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

echo "Installing updates and neccessry packages now."

sudo apt-get -y update
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl-dev
sudo apt-get install -y jq
sudo apt-get install -y ruby-full
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y build-essential libssl-dev libffi-dev python-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y libldns-dev
sudo apt-get install -y python3-pip
sudo apt-get install -y python-dnspython
sudo apt-get install -y git
sudo apt-get install -y rename
sudo apt-get install -y xargs

echo "updating and package installing done"
sleep 3
clear

#making tools directory
mkdir ~/tools
cd ~/tools

#installing .bash_profile
echo "installing bash_profile aliases from Hacktivist RO's recon_profile"
git clone https://github.com/HacktivistRO/recon_profile/
cd recon_profile
cat .bash_profile >> /root/.bash_profile
source /root/.bash_profile
echo "source /root/.bash_profile" >> /root/.bashrc
echo "done"
sleep 3
clear

#Installing python-pip
curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
python get-pip.py
rm get-pip.py
echo "python-pip installed"
sleep 3
clear

#installing go
echo "Installing Golang"
mkdir go-lang
cd go-lang
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.bash_profile
source /root/.bash_profile
cd ..
rm -rf go-lang
sleep 1
clear
go version
echo "Go Language has been installed successfully now."
sleep 3
clear

#Installing AWSCLI!
echo "Installing AWSCLI"
apt install -y awscli
sleep 1
clear
echo "AWSCLI installed successfully!"
echo "Don't forget to set up AWS credentials!"
sleep 3
clear

#installing LinkFinder
echo "Installing LinkFinder"
git clone https://github.com/GerbenJavado/LinkFinder
cd LinkFinder*
echo "Setting up LinkFinder by installing its requirements"
pip3 install -r requirements.txt
cd ~/tools/
echo "LinkFinder installed successfully"
sleep 3
clear
#installing Sublist3r
echo "Installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
echo "Setting up Sublist3r by installing its requirements"
pip3 install -r requirements.txt
python3 setup.py install
cd ~/tools/
echo "Sublist3er installed successfully"
sleep 3
clear

#installing The_S3_Bucketeers
echo "Installing Teh_S3_Bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
cd ~/tools/
echo "Teh_S3_Bucketeers installed successfully"
sleep 3
clear

#installing WPScan
echo "Installing WPScan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
cd ~/tools/
echo "WPScan installed successfully"
sleep 3
clear

#installing DirSearch
echo "Installing DirSearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "DirSearch installed successfully"
sleep 3
clear

#installing LazyS3
echo "Installing LazyS3"
git clone https://github.com/nahamsec/lazys3.git
cd ~/tools/
echo "LazyS3 installed successfully"
sleep 3
clear

#installing SQLMap
echo "Installing SQLMap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ~/tools/
echo "SQLMap installed successfully"
sleep 3
clear

#installing Knock
echo "Installing Knock"
git clone https://github.com/guelfoweb/knock.git
cd knock
python3 setup.py install
cd ~/tools/
echo "Installed Knock.py"
echo "Make sure you setup VirusTotal API key"
sleep 3
clear

#installing NMap
echo "Installing NMap"
sudo apt-get install -y nmap
echo "NMap installed successfully"
sleep 3
clear

#installing HTTProve
echo "Installing HTTProbe"
go install github.com/tomnomnom/httprobe@latest
echo "HTTProbe installed successfully"
sleep 3
clear

#Download must-have wordlists
echo "Downloading Bug Bounty Wordlists from Hacktivist RO's GitHub repository"
cd ~/tools/
git clone https://github.com/HacktivistRO/Bug-Bounty-Wordlists
echo "Bug-Bounty-Wordlists downloaded successfully"
sleep 3
clear

#Installing Assetfinder
echo "Installing AssetFinder"
mkdir af
cd af
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
tar -C /usr/local -xzf assetfinder-linux-amd64-0.1.1.tgz
cd ..
rm -rf af
echo "AssetFinder installed successfully"
sleep 3
clear

#installing SubFinder
echo "Installing SubFinder"
go install -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "Subfinder installed successfully"
sleep 3
clear

#Installing GAU
echo "Installing Get All URLs"
go install github.com/lc/gau/v2/cmd/gau@latest
echo "GAU installed successfully"
sleep 3
clear

#installing QSReplace
echo "Installing QSReplace"
go install github.com/tomnomnom/qsreplace@latest
echo "QSReplace installed successfully"
sleep 3
clear

#installing SudoMy
echo "Installing SudoMy"
cd ~/tools
git clone https://github.com/Screetsec/Sudomy
echo "SudoMy installed successfully"
sleep 3
clear

#Installing JexBoss
echo "Installing JexBoss"
git clone https://github.com/joaomatosf/jexboss
cd jexboss
echo "Setting up JexBoss by installing its requirements"
pip install -r requires.txt
echo "JexBoss installed successfully"
cd ..
sleep 3
clear

#Installing WhatWeb"
cd ~/tools
echo "Installing WhatWeb"
git clone https://github.com/urbanadventurer/WhatWeb.git
cd..
echo "WhatWeb installed successfully."
sleep 3
clear

#Installing Halberd (Load Balancer Detector)
cd ~/tools
echo "Installing Halberd"
git clone https://github.com/jmbr/halberd
cd halberd
python setup.py install
echo "Halberd installed successfully."
sleep 3
clear

# Removing obsolete and unneccessary packages
echo "Removing obsolete and unneccessary packages"
apt -y autoremove
sleep 3
clear
echo "Your "HackBox" is now ready. All the best!"
echo "For a list of all tools installed, visit here: https://github.com/HacktivistRO/HackBox"
echo "Have a happy and safe hacking journey ahead!"
