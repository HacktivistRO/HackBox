#!/bin/bash

# Ensure we are being ran as root
if [ $(id -u) -ne 0 ]; then
	echo "This script must be ran as root"
	exit 1
fi

echo "Installing updates and neccessry packages now."

sudo apt -y update
sudo apt install -y libcurl4-openssl-dev
sudo apt install -y curl
sudo apt install -y libssl-dev
sudo apt install -y jq
sudo apt install -y ruby-full
sudo apt install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt install -y build-essential libssl-dev libffi-dev python-dev
sudo apt install -y python-setuptools
sudo apt install -y libldns-dev
sudo apt install -y python-pip
sudo apt install -y gem
sudo apt install -y ruby
sudo apt install -y ruby-dev
sudo apt install -y python3-pip
sudo apt install -y python-dnspython
sudo apt install -y git
sudo apt install -y rename
sudo apt install -y xargs
sudo apt install -y docker.io

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
cd ~/tools/
echo ".bash_profile ready"
sleep 3
clear

#installing go
echo "Installing Go Language now!"
mkdir go-lang
cd go-lang
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
rm -rf /usr/local/go
tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
export PATH=$PATH:/usr/local/go/bin
echo 'export PATH=$PATH:/usr/local/go/bin' >> /root/.bash_profile
source /root/.bash_profile
cd ~/tools
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
gem install wpscan
echo "WPScan installed successfully"
sleep 3
clear

#installing DirSearch
echo "Installing DirSearch and its requirements"
git clone https://github.com/maurosoria/dirsearch.git
cd dirsearch
pip3 install -r requirements.txt
cd ~/tools/
echo "DirSearch installed successfully"
sleep 3
clear

#installing HostileSubBruteForcer
echo "Installing HostileSubBruteForcer"
git clone https://github.com/HacktivistRO/HostileSubBruteForcer
echo "HostileSubBruteForcer installed successfully"
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

#installing AMass
echo "Installing Amass"
cd ~/tools/
mkdir Amass
cd Amass
wget https://github.com/OWASP/Amass/releases/download/v3.21.2/amass_linux_amd64.zip
unzip amass_linux_amd64.zip
cd amass_linux_amd64.zip
mv amass /usr/bin
cd ~/tools/
rm -rf amass
echo "Amass installed successfully"
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

#installing HTTProbe
echo "Installing HTTProbe"
mkdir HTTProbe
cd HTTProbe
wget https://github.com/tomnomnom/httprobe/releases/download/v0.2/httprobe-linux-amd64-0.2.tgz
tar -xvf httprobe-linux-amd64-0.2.tgz
mv ./httprobe /usr/bin/
cd ..
rm -rf HTTProbe
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
wget https://github.com/tomnomnom/assetfinder/releases/download/v0.1.1/assetfinder-linux-amd64-0.1.1.tgz
mv assetfinder-linux-amd64-0.1.1.tgz assetfinder.tgz
tar -zxf assetfinder.tgz
rm assetfinder.tgz
chmod +x assetfinder
sudo mv assetfinder /usr/bin
sleep 3
clear

#installing SubFinder
echo "Installing SubFinder"
cd ~/tools
mkdir subfinder
cd subfinder
wget https://github.com/projectdiscovery/subfinder/releases/download/v2.5.5/subfinder_2.5.5_linux_amd64.zip
unzip subfinder_2.5.5_linux_amd64.zip
mv subfinder /usr/bin
cd ..
rm -rf subfinder/
echo "Subfinder installed successfully"
sleep 3
clear

#Installing GAU
echo "Installing Get All URLs"
cd ~/tools
mkdir gau
cd gau
wget https://github.com/lc/gau/releases/download/v2.1.2/gau_2.1.2_linux_amd64.tar.gz
tar xvf gau_2.1.2_linux_amd64.tar.gz
mv ./gau /usr/bin/
cd ~/tools
rm gau
echo "GAU installed successfully"
sleep 3
clear

#installing QSReplace
echo "Installing QSReplace"
cd ~/tools
mkdir qsr
cd qsr
wget https://github.com/tomnomnom/qsreplace/releases/download/v0.0.3/qsreplace-linux-amd64-0.0.3.tgz
tar xvf qsreplace-linux-amd64-0.0.3.tgz
chmod +x qsreplace
mv ./qsreplace /usr/bin
cd ~/tools
rm -rf qsr
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
cd WhatWeb
chmod +x ./whatweb
mv whatweb /usr/bin
cd ~/tools
rm -rf WhatWeb
echo "WhatWeb installed successfully."
sleep 3
clear

#Installing Halberd (Load Balancer Detector)
cd ~/tools
echo "Installing Halberd"
git clone https://github.com/jmbr/halberd
cd halberd
python setup.py install
cd ~/tools/
echo "Halberd installed successfully."
sleep 3
clear

#Installing Cero
cd ~/tools
echo "Installing Cero"
mkdir cero
cd cero
wget https://github.com/glebarez/cero/releases/download/v1.3.0/cero-linux-amd64
mv cero-linux-amd64 cero
chmod +x ./cero
mv cero /usr/bin
cd ..
rm -rf cero
echo "Cero installed successfully."
sleep 3
clear

#Installing CSPRecon
cd ~/tools
echo "Installing CSPRecon"
cd ~/tools/
mkdir csprecon
cd csprecon
wget https://github.com/edoardottt/csprecon/archive/refs/tags/v0.0.4.zip 
unzip v0.0.4.zip
cd csprecon-0.0.4/cmd/csprecon
go build
chmod +x ./csprecon
mv ./csprecon /usr/bin
cd ~/tools/
rm -rf csprecon
echo "CSPRecon installed successfully."
sleep 3
clear

#Installing Gotator
cd ~/tools
echo "Installing Gotator now"
mkdir gotator
cd gotator
wget https://github.com/Josue87/gotator/archive/refs/tags/v1.1.zip
unzip v1.1.zip
cd gotator-1.1/
go build
chmod +x ./gotator
mv ./gotator /usr/bin
echo "Gotator installed successfully."
cd ~/tools
rm -rf gotator
sleep 3
clear

#Installing identYwaf
cd ~/tools
echo "Installing identYwaf"
git clone --depth 1 https://github.com/stamparm/identYwaf.git
echo "identYwaf installed successfully."
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
